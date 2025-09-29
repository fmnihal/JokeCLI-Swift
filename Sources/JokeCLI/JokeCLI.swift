// import Foundation

// @main
// struct JokeCLI {
//     static func main() {
//         let joke = JokeFetcher.fetch()
//         print("\n😂 Here's a joke for you:\n")
//         print(joke)
//     }
// }


































// // WORKS. GIT COMMIT #2

// // JokeCLI.swift
// import Foundation

// @main
// struct JokeCLI {
//     static func main() async {
//         do {
//             let joke = try await JokeFetcher.fetch()
//             print("\n😂 Here's a joke for you:\n")
//             print(joke)
//         } catch {
//             print("Failed to fetch joke: \(error)")
//         }
//     }
// }







@main
struct JokeCLI {
    static func main() async {
        let interactor = JokeInteractor()
        let presenter = JokePresenter()
        let view = JokeView()
        let router = JokeRouter()

        do {
            let joke = try await interactor.fetchJoke()
            let message = presenter.present(joke: joke)
            view.display(message)
            router.exitApp()
        } catch {
            view.display("❌ Failed to fetch joke: \(error)")
            router.exitApp()
        }
    }
}

