import Foundation


protocol JokeRouterProtocol {
    func exitApp() -> Never
}

struct JokeRouter: JokeRouterProtocol {
    func exitApp() -> Never {
        exit(0)
    }
}
