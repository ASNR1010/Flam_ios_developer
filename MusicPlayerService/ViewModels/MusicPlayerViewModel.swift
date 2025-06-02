import Foundation
import Combine

class MusicPlayerViewModel: ObservableObject {
    @Published var currentSong: Song?
    @Published var isPlaying = false
    @Published var playlist: [Song] = []

    private var currentIndex = 0
    private var cancellables = Set<AnyCancellable>()

    func play() {
        guard let song = playlist[safe: currentIndex] else { return }
        currentSong = song
        isPlaying = true
        song.source.play(song: song)
    }

    func pause() {
        guard let song = currentSong else { return }
        isPlaying = false
        song.source.pause()
    }

    func next() {
        currentIndex = (currentIndex + 1) % playlist.count
        play()
    }

    func previous() {
        currentIndex = (currentIndex - 1 + playlist.count) % playlist.count
        play()
    }
}

extension Collection {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
