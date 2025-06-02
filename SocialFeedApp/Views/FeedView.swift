import SwiftUI

struct FeedView: View {
    @ObservedObject var viewModel = FeedViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.posts) { post in
                FeedItemView(post: post)
            }
            .navigationTitle("Social Feed")
            .onAppear {
                viewModel.fetchPosts()
            }
        }
    }
}