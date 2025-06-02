import Foundation

class LocalMusicSource: MusicSource {
    func play(song: Song) {
        print("Playing local song: \(song.title)")
    }

    func pause() {
        print("Pausing local song")
    }
}
