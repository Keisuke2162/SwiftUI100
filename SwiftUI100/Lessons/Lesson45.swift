//
//  Lesson45.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/21.
//

import SwiftUI
import Combine

enum Lesson45GithubAPI {
    static func searchRepos(page: Int, perPage: Int) -> AnyPublisher<[Lesson45Repository], Error> {
        let url = URL(string: "https://api.github.com/search/repositories?q=swift&sort=stars&page=\(page)&per_page=\(perPage)")!
        return URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap { try JSONDecoder().decode(Lesson45GithubSearchResult.self, from: $0.data).items }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}

struct Lesson45GithubSearchResult: Codable {
    let items: [Lesson45Repository]
}

struct Lesson45Repository: Codable, Identifiable, Equatable {
    let id: Int
    let name: String
    let description: String?
    let stargazersCount: Int

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case stargazersCount = "stargazers_count"
    }
}

// UIKitのUIActivityIndicatorViewを使う
struct Spinner: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let spinner = UIActivityIndicatorView(style: .medium)
        spinner.hidesWhenStopped = true
        spinner.startAnimating()
        return spinner
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {}
}

struct Lesson45: View {
    @State private var repositories: [Lesson45Repository] = []
    @State private var page = 1
    @State private var isLoading = false
    @State private var subscriptions = Set<AnyCancellable>()
    @State private var isShowAlert = false
    @State private var errorMessage = ""

    var body: some View {
        List {
            ForEach(repositories) { repository in
                VStack(alignment: .leading) {
                    Text(repository.name)
                }
                .onAppear {
                    if self.repositories.last == repository {
                        self.fetchRepositories()
                    }
                }
            }
            if isLoading {
                Spinner()
                    .frame(idealWidth: .infinity, maxWidth: .infinity, alignment: .center)
            }
        }
        .onAppear {
            self.fetchRepositories()
        }
        .alert(isPresented: $isShowAlert) {
            Alert(title: Text("Error"))
        }
        .listStyle(.grouped)
    }
    
    private func fetchRepositories() {
        // Loading中は何もしない
        guard !isLoading else { return }
        isLoading = true

        Lesson45GithubAPI.searchRepos(page: self.page, perPage: 30)
            .sink { completion in
                switch completion {
                case .finished:
                    self.isLoading = false
                    break
                case let .failure(error):
                    self.isLoading = false
                    self.isShowAlert = true
                    self.errorMessage = error.localizedDescription
                }
            } receiveValue: { repositories in
                self.repositories += repositories
                self.page += 1
            }
            .store(in: &self.subscriptions)
    }
}

struct Lesson45_Previews: PreviewProvider {
    static var previews: some View {
        Lesson45()
    }
}
