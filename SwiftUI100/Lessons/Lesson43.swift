//
//  Lesson43.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/20.
//

import SwiftUI
import Combine

enum Lesson43GithubAPI {
    static func searchRepos(page: Int, perPage: Int) -> AnyPublisher<[Lesson43Repository], Error> {
        let url = URL(string: "https://api.github.com/search/repositories?q=swift&sort=stars&page=\(page)&per_page=\(perPage)")!
        return URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap { try JSONDecoder().decode(Lesson43GithubSearchResult.self, from: $0.data).items }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}

struct Lesson43GithubSearchResult: Codable {
    let items: [Lesson43Repository]
}

struct Lesson43Repository: Codable, Identifiable, Equatable {
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

struct Lesson43: View {
    @State private var repositories: [Lesson43Repository] = []
    @State private var subscriptions = Set<AnyCancellable>()
    @State private var isShowAlert = false
    @State private var errorMessage = ""

    var body: some View {
        List(repositories) { repository in
            VStack(alignment: .leading) {
                Text(repository.name)
            }
        }.onAppear {
            Lesson43GithubAPI.searchRepos(page: 1, perPage: 30)
                .sink { completion in
                    switch completion {
                    case .finished:
                        break
                    case let .failure(error):
                        self.isShowAlert = true
                        self.errorMessage = error.localizedDescription
                    }
                } receiveValue: { repositories in
                    self.repositories = repositories
                }
                .store(in: &self.subscriptions)
        }
        .alert(isPresented: $isShowAlert) {
            Alert(title: Text("Error"))
        }
    }
}

struct Lesson43_Previews: PreviewProvider {
    static var previews: some View {
        Lesson43()
    }
}
