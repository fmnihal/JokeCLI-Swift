protocol JokePresenterProtocol {
    func present(joke: Joke) -> String
}

struct JokePresenter: JokePresenterProtocol {
    func present(joke: Joke) -> String {
        return "\n😂 Here's a joke for you:\n\n\(joke.setup)\n\(joke.punchline)"
    }
}
