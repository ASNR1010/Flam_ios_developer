import Foundation

class SpotifyMusicSource: MusicSource {
    func play(song: Song) {
        print("Playing Spotify song: \(song.title)")
    }

    func pause() {
        print("Pausing Spotify song")
    }
}
