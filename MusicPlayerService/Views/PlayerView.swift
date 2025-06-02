import SwiftUI

struct PlayerView: View {
    @ObservedObject var viewModel: MusicPlayerViewModel

    var body: some View {
        VStack(spacing: 16) {
            if let song = viewModel.currentSong {
                Text(song.title).font(.title)
                Text(song.artist).font(.subheadline)
            } else {
                Text("No song playing").font(.subheadline)
            }

            HStack {
                Button(action: viewModel.previous) {
                    Image(systemName: "backward.fill")
                }
                Button(action: viewModel.isPlaying ? viewModel.pause : viewModel.play) {
                    Image(systemName: viewModel.isPlaying ? "pause.fill" : "play.fill")
                }
                Button(action: viewModel.next) {
                    Image(systemName: "forward.fill")
                }
            }
            .font(.largeTitle)
        }
        .padding()
    }
}
