import Foundation

@main
struct JokeCLI {
    static func main() {
        let joke = JokeFetcher.fetch()
        print("\n😂 Here's a joke for you:\n")
        print(joke)
    }
}
