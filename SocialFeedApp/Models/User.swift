import Foundation

struct User: Identifiable, Codable {
    let id: UUID
    let username: String
    let profileImageUrl: String?
}