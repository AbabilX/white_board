<div align="center">

# 🎨 White Board

### *Infinite Drawing Canvas for Creative Minds*

[![Flutter](https://img.shields.io/badge/Flutter-3.10.7+-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.10.7+-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)

[![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20macOS%20%7C%20Windows%20%7C%20Web-4CAF50?style=for-the-badge)](https://github.com/AbabilX/white_board)
[![License](https://img.shields.io/badge/License-Contact_Owner-yellow?style=for-the-badge)](https://github.com/AbabilX/white_board)

*An infinite, multi-page whiteboard application built with Flutter. Create, draw, erase, and annotate on an endless canvas with powerful drawing tools and seamless multi-platform support.*

[Features](#-features) • [Installation](#-installation) • [Usage](#-usage) • [Contributing](#-contributing)

---

</div>

## ✨ Features

<table>
<tr>
<td width="50%">

### 🎨 **Drawing Tools**

- 🖊️ **Pen Tool** — Draw with multiple colors and adjustable stroke width (2-15px)
- 🧹 **Eraser Tool** — Remove drawings with adjustable eraser size (15-200px)
- ✨ **Highlighter Tool** — Temporarily highlight areas with translucent effect (auto-fades)
- ✋ **Hand Tool** — Pan and navigate across the infinite canvas

</td>
<td width="50%">

### 🎯 **Core Capabilities**

- ♾️ **Infinite Canvas** — Draw without boundaries
- 📄 **Multi-Page Support** — Create and manage multiple drawing pages
- 🎨 **Color Palette** — 6 preset colors (Black, Red, Green, Yellow, Blue, Teal)
- 🔍 **Advanced Zoom** — Pinch-to-zoom, slider controls (0.1x to 5x)
- 🖱️ **Custom Cursors** — Context-aware cursors for each tool
- 📱 **Responsive Design** — Optimized UI with minimum size of 800x600

</td>
</tr>
<tr>
<td colspan="2">

### 🖱️ **Input & Interaction**

- 🖱️ Mouse and trackpad navigation
- 👆 Touch gestures (2-finger pan/zoom)
- ⚡ Smooth drawing experience with real-time rendering
- 🎯 Precision controls for professional work

</td>
</tr>
</table>

## 🚀 Getting Started

### 📋 Prerequisites

Before you begin, ensure you have the following installed:

| Requirement | Version | Purpose |
|------------|---------|---------|
| **Flutter SDK** | 3.10.7+ | Core framework |
| **Dart SDK** | 3.10.7+ | Programming language |

#### Platform-Specific Requirements

<details>
<summary><b>🍎 macOS</b></summary>

- Xcode (latest version)
- CocoaPods (`sudo gem install cocoapods`)
</details>

<details>
<summary><b>🪟 Windows</b></summary>

- Visual Studio 2022 with "Desktop development with C++" workload
</details>

<details>
<summary><b>🐧 Linux</b></summary>

```bash
# Ubuntu/Debian
sudo apt-get install clang cmake ninja-build pkg-config libgtk-3-dev
```
</details>

<details>
<summary><b>🌐 Web</b></summary>

- Chrome, Edge, or Firefox (latest version)
</details>

### 📦 Installation

Follow these simple steps to get White Board running on your machine:

```bash
# 1. Clone the repository
git clone https://github.com/AbabilX/white_board.git
cd white_board

# 2. Install dependencies
flutter pub get

# 3. Run the application
flutter run -d [platform]
```

**Platform options:**
- `macos` — macOS desktop app
- `linux` — Linux desktop app  
- `windows` — Windows desktop app
- `chrome` — Web application

### 🏗️ Building for Production

Create optimized builds for distribution:

```bash
# Desktop Applications
flutter build macos    # macOS .app
flutter build linux    # Linux executable
flutter build windows  # Windows .exe

# Web Application
flutter build web      # Static web files
```

Build outputs:
- **macOS**: `build/macos/Build/Products/Release/`
- **Linux**: `build/linux/x64/release/bundle/`
- **Windows**: `build/windows/x64/runner/Release/`
- **Web**: `build/web/`

## 📖 Usage Guide

### 🎯 Quick Start

<table>
<tr>
<td width="33%">

**1. Drawing**
```
→ Select a color
→ Choose pen tool
→ Start drawing!
```

</td>
<td width="33%">

**2. Navigation**
```
→ Use hand tool
→ Two-finger pan
→ Pinch to zoom
```

</td>
<td width="33%">

**3. Pages**
```
→ Open drawer
→ Add/switch pages
→ Delete unwanted
```

</td>
</tr>
</table>

### 🎮 Controls & Shortcuts

| Action | Method |
|--------|--------|
| **Pan Canvas** | Two-finger scroll or Hand tool |
| **Zoom In/Out** | Pinch gesture or Zoom slider |
| **Draw** | Pen tool + Mouse/Touch |
| **Erase** | Eraser tool + Drag |
| **Highlight** | Highlighter tool (auto-fades after 2s) |
| **Clear Page** | Trash icon in toolbar |
| **Reset View** | Home icon in toolbar |
| **Add Page** | Plus icon in drawer |
| **Switch Page** | Click page in drawer |

### 🛠️ Toolbar Reference

**Bottom Toolbar** (from left to right):
1. 📏 **Stroke Width Slider** — Adjust tool size
2. 🧹 **Eraser** — Remove content
3. 🖊️ **Pen** — Draw mode
4. ✋ **Hand** — Pan mode
5. ✨ **Highlighter** — Temporary highlights
6. 🗑️ **Clear** — Clear current page
7. 🏠 **Reset** — Reset view to default
8. 🔍 **Zoom** — Show zoom controls

**Top Toolbar:**
- 🎨 **Color Palette** — Choose from 6 colors
- 🍔 **Menu** — Access page drawer

## 🏗️ Architecture & Technical Details

### 🔧 Built With

This project leverages powerful Flutter packages and modern architecture:

| Package | Version | Purpose |
|---------|---------|---------|
| [**Flutter**](https://flutter.dev/) | Latest | Cross-platform UI framework |
| [**GetX**](https://pub.dev/packages/get) | 4.7.3 | State management & routing |
| [**window_manager**](https://pub.dev/packages/window_manager) | 0.5.1 | Desktop window controls |
| [**flutter_custom_cursor**](https://pub.dev/packages/flutter_custom_cursor) | 0.0.4 | Custom cursor support |
| [**hugeicons**](https://pub.dev/packages/hugeicons) | 1.1.4 | Beautiful icon library |
| [**flutter_svg**](https://pub.dev/packages/flutter_svg) | 2.2.3 | SVG rendering |
| [**dotted_border**](https://pub.dev/packages/dotted_border) | 3.1.0 | Stylish borders |

### 📁 Project Structure

```
white_board/
│
├── lib/
│   ├── main.dart                              # Application entry point
│   └── src/
│       └── home/
│           ├── board/
│           │   ├── board.dart                 # Main canvas widget
│           │   └── widget/
│           │       ├── board_drawer.dart      # Page navigation drawer
│           │       └── page.dart              # Individual page container
│           │
│           ├── drawing_path/
│           │   └── drawing_path.dart          # Path data model & enums
│           │
│           ├── painter/
│           │   └── board_custom_painter.dart  # Custom canvas painter
│           │
│           └── pointers/
│               └── mouse_pointers.dart        # Cursor asset manager
│
├── assets/
│   └── cursors/                               # Custom cursor images
│
├── test/                                      # Unit & widget tests
└── pubspec.yaml                               # Project dependencies
```

### 🧩 Key Components

<details>
<summary><b>Board Widget</b></summary>

The main canvas widget that handles:
- Tool selection and management
- Gesture recognition (pan, zoom, draw)
- State management for drawing operations
- Integration with InteractiveViewer
</details>

<details>
<summary><b>DrawingPath Model</b></summary>

Data structure for storing drawing strokes:
- Color information
- Stroke width
- Path type (pen, eraser, highlighter)
- Point coordinates
</details>

<details>
<summary><b>PaintingPage</b></summary>

Container managing multiple drawing paths per page:
- Layer management
- Path collection
- Page-specific state
</details>

<details>
<summary><b>BoardCustomPainter</b></summary>

Custom painter responsible for:
- Rendering paths on canvas
- Applying visual effects
- Optimized drawing performance
</details>

<details>
<summary><b>MousePointers Singleton</b></summary>

Centralized manager for custom cursor assets:
- Cursor loading and caching
- Platform-specific cursor handling
- Dynamic cursor switching
</details>

### 🎨 Design Philosophy

- **Simplicity First** — Intuitive interface with minimal learning curve
- **Performance** — Optimized rendering for smooth drawing experience
- **Cross-Platform** — Write once, run everywhere
- **Extensible** — Clean architecture for easy feature additions

## 🤝 Contributing

We welcome contributions from the community! Whether it's bug fixes, new features, or documentation improvements, your help is appreciated.

### How to Contribute

1. **Fork** the repository
2. **Create** a feature branch
   ```bash
   git checkout -b feature/AmazingFeature
   ```
3. **Commit** your changes
   ```bash
   git commit -m 'Add some AmazingFeature'
   ```
4. **Push** to the branch
   ```bash
   git push origin feature/AmazingFeature
   ```
5. **Open** a Pull Request

### Contribution Guidelines

- 🐛 **Bug Reports**: Include steps to reproduce, expected behavior, and screenshots if applicable
- ✨ **Feature Requests**: Open an issue first to discuss major changes
- 📝 **Code Style**: Follow existing code conventions and formatting
- ✅ **Testing**: Ensure your changes don't break existing functionality
- 📖 **Documentation**: Update relevant documentation for new features

### Development Setup

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/white_board.git

# Add upstream remote
git remote add upstream https://github.com/AbabilX/white_board.git

# Create a branch
git checkout -b feature/my-feature

# Make changes and test
flutter test
flutter analyze

# Commit and push
git commit -am "Description of changes"
git push origin feature/my-feature
```

---

## 📄 License

This project is currently **unlicensed**. Please contact the repository owner for licensing information before using this software in production or commercial applications.

---

## 🌟 Acknowledgments

Special thanks to:

- 💙 **Flutter Team** — For the amazing cross-platform framework
- 📦 **Package Maintainers** — For their excellent open-source libraries
- 🎨 **HugeIcons** — For the beautiful icon set
- 👥 **Contributors** — Everyone who has contributed to this project

---

## 📬 Contact & Support

<div align="center">

**Project Link:** [github.com/AbabilX/white_board](https://github.com/AbabilX/white_board)

**Found a bug?** [Open an issue](https://github.com/AbabilX/white_board/issues)

**Want to contribute?** [See contributing guidelines](#-contributing)

---

### ⭐ Star this project if you find it helpful!

Made with ❤️ using Flutter

*This project is under active development. Features and documentation may change.*

</div>
