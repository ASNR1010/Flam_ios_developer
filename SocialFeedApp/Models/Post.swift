import Foundation

struct Post: Identifiable, Codable {
    let id: UUID
    let user: User
    let content: String
    let imageUrl: String?
    let timestamp: Date
}