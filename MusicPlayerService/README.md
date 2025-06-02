# MusicPlayerService

A modular and extensible music player application built using Swift, SwiftUI, Combine, and MVVM architecture. Supports multiple music sources like local files and Spotify (mock).

## Features

- Play, pause, skip, and previous track controls
- Playlist queue management
- Real-time playback state updates
- Support for multiple music sources
- MVVM architecture with Combine for reactive programming

```plaintext
MusicPlayerService/
├── Models/
│ └── Song.swift # Defines the Song model
├── ViewModels/
│ └── MusicPlayerViewModel.swift # Handles playback logic and data-binding
├── Views/
│ └── PlayerView.swift # SwiftUI view displaying the player UI
├── Services/
│ ├── MusicSource.swift # Protocol for music sources
│ ├── LocalMusicSource.swift # Concrete implementation for local songs
│ └── SpotifyMusicSource.swift # Mock implementation for Spotify songs
├── Resources/
│ └── Assets.xcassets # App icons, media assets
├── MusicPlayerService.xcodeproj/ # Xcode project file
└── README.md # Project documentation (this file)
```

## Features

- Unified interface for music sources (local, Spotify mock)
- Play, pause, skip, previous controls
- Playlist queue management
- Real-time UI updates via Combine
- MVVM design pattern for separation of concerns
- Easily extensible for more sources (e.g., YouTube, SoundCloud)

## Technologies Used

- Swift
- SwiftUI
- Combine
- MVVM Architecture
- Design Patterns:
  - Strategy (used for interchangeable music sources)
  - Singleton (single music player instance if extended further)

## Description of Key Files

| File/Folder               | Description                                                        |
|--------------------------|--------------------------------------------------------------------|
| Song.swift               | Defines the Song model with title, artist, duration, and source    |
| MusicPlayerViewModel.swift | Core playback logic (play/pause/next/previous), manages playlist |
| PlayerView.swift         | UI layout for music player controls and song details               |
| MusicSource.swift        | Protocol defining play and pause methods for all music sources     |
| LocalMusicSource.swift   | Handles playback simulation of local files                         |
| SpotifyMusicSource.swift | Mock for handling Spotify-style playback                           |
| Assets.xcassets          | App icons and images                                                |
| README.md                | Project documentation                                               |


## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/MusicPlayerService.git
   ```
2. Open `MusicPlayerService.xcodeproj` in Xcode.
3. Build and run the project.
