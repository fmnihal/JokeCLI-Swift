protocol JokeViewProtocol {
    func display(_ message: String)
}

struct JokeView: JokeViewProtocol {
    func display(_ message: String) {
        print(message)
    }
}
