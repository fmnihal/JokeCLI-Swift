import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

protocol JokeInteractorProtocol {
    func fetchJoke() async throws -> Joke
}

struct JokeInteractor: JokeInteractorProtocol {
    func fetchJoke() async throws -> Joke {
        let url = URL(string: "https://official-joke-api.appspot.com/random_joke")!
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode(Joke.self, from: data)
    }
}
