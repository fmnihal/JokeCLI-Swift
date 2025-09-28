import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

struct JokeFetcher {
    static func fetch() -> String {
        guard let url = URL(string: "https://official-joke-api.appspot.com/random_joke"),
              let data = try? Data(contentsOf: url),
              let joke = try? JSONDecoder().decode(Joke.self, from: data) else {
            return "Failed to fetch joke."
        }

        return "\(joke.setup)\n\(joke.punchline)"
    }
}

struct Joke: Codable {
    let setup: String
    let punchline: String
}
