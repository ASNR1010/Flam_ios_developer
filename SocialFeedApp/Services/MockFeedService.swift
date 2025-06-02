import Foundation
import Combine

class MockFeedService {
    func fetchFeed() -> AnyPublisher<[Post], Never> {
        let user = User(id: UUID(), username: "john_doe", profileImageUrl: nil)
        let posts = [
            Post(id: UUID(), user: user, content: "Hello from MVVM!", imageUrl: nil, timestamp: Date()),
            Post(id: UUID(), user: user, content: "Another post with image.", imageUrl: "https://via.placeholder.com/150", timestamp: Date())
        ]
        return Just(posts)
            .delay(for: .seconds(1), scheduler: DispatchQueue.global())
            .eraseToAnyPublisher()
    }
}