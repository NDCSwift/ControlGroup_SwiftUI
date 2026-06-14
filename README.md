# 🎛️ ControlGroup in SwiftUI
A focused example project demonstrating how to use `ControlGroup` — SwiftUI's context-aware container for related controls — across inline, menu, and toolbar placements.

---

## 🤔 What this is
This project shows how `ControlGroup` adapts its layout to wherever you place it: a bordered pill inline, a compact strip inside a `Menu`, and native icon-sized buttons in a toolbar — all from the same declaration. It also includes two custom `ControlGroupStyle` implementations: a segmented pill built with `HStack`, and an adaptive layout that switches between `HStack` and `VStack` using `ViewThatFits`. A full `EditorView` puts everything together in a realistic bottom toolbar.

## ✅ Why you'd use it
- **Context-aware layout** — `ControlGroup` picks the correct system style for its placement automatically, so you stop writing separate HStack arrangements for the same set of controls
- **Custom styles** — `ControlGroupStyle` gives you full control over the container, just like `ButtonStyle`, while leaving the individual controls unchanged
- **Adaptive containers** — wrapping `ViewThatFits` inside a style lets the group switch from horizontal to vertical when space is constrained, with no `GeometryReader` math

## 📺 Watch on YouTube
[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtu.be/7HaylMlkVFM)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@noahdoescoding).

---

## 🚀 Getting Started

### 1. Clone the repo
```bash
git clone https://github.com/NDCSwift/ControlGroup_SwiftUI.git
```

### 2. Open in Xcode
```
ControlGroup_SwiftUI.xcodeproj
```

### 3. Set your Team
In the project settings, select your Apple Developer team under **Signing & Capabilities**.

### 4. Set your Bundle ID
Update the bundle identifier to match your team (e.g. `com.yourname.ControlGroupSwiftUI`).

---

## 🛠️ Notes
- `ContentView` covers the three core placements: inline, inside a `Menu`, and inside a `toolbar` — showing how the same `ControlGroup` renders differently in each context
- `SegmentedStyle` demonstrates a custom `ControlGroupStyle` that wraps controls in a rounded pill using `HStack(spacing: 0)` and a clipped background
- `AdaptiveStyle` demonstrates a `ControlGroupStyle` that uses `ViewThatFits` to prefer a horizontal layout and fall back to vertical when width is constrained
- `EditorView` combines an undo/redo group, a bold/italic group, and an overflow `Menu` group in a single bottom toolbar — each group picks up its context's native styling automatically

## 📦 Requirements
- Xcode 15+
- iOS 15+ / macOS 12+
- Swift 5.9+

---

📺 [Watch the guide on YouTube](https://youtu.be/7HaylMlkVFM)
