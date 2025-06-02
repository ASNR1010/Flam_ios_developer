# SocialFeedApp

A lightweight Twitter-like social media feed application built with Swift, SwiftUI, Combine, and MVVM architecture. The project showcases reactive UI, modular components, and scalable architecture without using third-party libraries.

## Features

- Clean MVVM architecture with Combine
- Display user posts with text, image, and author info
- Pull-to-refresh and infinite scrolling simulation
- Combine-based real-time data updates
- Fully testable ViewModel logic
- Reusable and modular feed components
- Dynamic height for posts based on content

```plaintext
SocialFeedApp/
├── Models/
│   └── Post.swift                 # Defines the Post model (id, author, text, imageURL)
├── ViewModels/
│   └── FeedViewModel.swift       # Handles data fetching and state updates
├── Views/
│   ├── FeedView.swift            # Main feed UI with list of posts
│   ├── PostRowView.swift         # Reusable view to render each post
│   └── RefreshControl.swift      # Custom pull-to-refresh integration
├── Resources/
│   └── Assets.xcassets           # App icons and media
├── SocialFeedAppApp.swift        # App entry point
├── PreviewContent/
│   └── SampleData.swift          # Sample post data for previews/testing
├── README.md                     # Project documentation (this file)
└── SocialFeedApp.xcodeproj/     # Xcode project file

```

## Technologies Used

- Swift  
- SwiftUI  
- Combine  
- MVVM Design Pattern  
- Built-in SwiftUI Pull-to-Refresh (iOS 15+)

---

## Architecture Overview

- **MVVM**: Clean separation of View (UI), ViewModel (state & logic), and Model (data)  
- **Combine**: Used for binding and reacting to state changes (e.g., new posts, loading state)  
- **Modularity**: Feed items are built as reusable views (`PostRowView`)  
- **Extensibility**: Easy to add support for new post types like videos, polls, etc.

---

## Description of Key Files

| File/Folder              | Description                                                             |
|--------------------------|-------------------------------------------------------------------------|
| `Post.swift`             | Defines the Post data model                                             |
| `FeedViewModel.swift`    | Handles fetching, refreshing, and managing the feed state               |
| `FeedView.swift`         | Displays the main list of posts with pull-to-refresh support            |
| `PostRowView.swift`      | Reusable SwiftUI component for rendering a post                         |
| `RefreshControl.swift`   | Custom implementation for pull-to-refresh (optional fallback pre-iOS 15)|
| `Assets.xcassets`        | App icons and image placeholders                                        |
| `SocialFeedAppApp.swift` | App entry point and initial view                                        |
| `SampleData.swift`       | Dummy data for testing or SwiftUI previews                              |
| `LICENSE`                | MIT license                                                             |
| `README.md`              | Project overview and instructions                                       |

---

## Getting Started

### Prerequisites

- macOS with Xcode 13 or later  
- Swift 5.5 or later

### Steps to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/SocialFeedApp.git


