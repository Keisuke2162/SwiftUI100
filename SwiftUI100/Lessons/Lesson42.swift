//
//  Lesson42.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/20.
//

import SwiftUI

enum Lesson42GithubAPI {
    static func searchRepositories(page: Int, perPage: Int, completion: @escaping(Result<[Lesson42Repository], Error>) -> Void) {
        let url = URL(string: "https://api.github.com/search/repositories?q=swift&sort=stars&page=\(page)&per_page=\(perPage)")!
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(Result.failure(error))
                return
            }
            do {
                let responsies = try JSONDecoder().decode(Lesson42GithubSearchResult.self, from: data!).items
                completion(Result.success(responsies))
            } catch let error {
                completion(Result.failure(error))
            }
        }
        task.resume()
    }
}

struct Lesson42GithubSearchResult: Codable {
    let items: [Lesson42Repository]
}

struct Lesson42Repository: Codable, Identifiable, Equatable {
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

struct Lesson42: View {
    @State private var repositories: [Lesson42Repository] = []
    @State private var isShowAlert = false
    @State private var errorMessage = ""

    var body: some View {
        List(repositories) { repository in
            VStack {
                Text(repository.name)
            }
        }.onAppear {
            Lesson42GithubAPI.searchRepositories(page: 1, perPage: 50) { result in
                switch result {
                case let .success(repositories):
                    DispatchQueue.main.async {
                        self.repositories = repositories
                    }
                case let .failure(error):
                    DispatchQueue.main.async {
                        self.errorMessage = error.localizedDescription
                        self.isShowAlert = true
                    }
                }
            }
        }
        .alert(isPresented: $isShowAlert) {
            Alert(title: Text("Error"))
        }
    }
}

struct Lesson42_Previews: PreviewProvider {
    static var previews: some View {
        Lesson42()
    }
}
