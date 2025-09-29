// import Foundation

// @main
// struct JokeCLI {
//     static func main() {
//         let joke = JokeFetcher.fetch()
//         print("\n😂 Here's a joke for you:\n")
//         print(joke)
//     }
// }




































// JokeCLI.swift
import Foundation

@main
struct JokeCLI {
    static func main() async {
        do {
            let joke = try await JokeFetcher.fetch()
            print("\n😂 Here's a joke for you:\n")
            print(joke)
        } catch {
            print("Failed to fetch joke: \(error)")
        }
    }
}
