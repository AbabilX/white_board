# White Board - Infinite Drawing Canvas

An infinite, multi-page whiteboard application built with Flutter. Create, draw, erase, and annotate on an endless canvas with multiple tools and pages.

![Flutter](https://img.shields.io/badge/Flutter-v3.10.4+-blue.svg)
![Dart](https://img.shields.io/badge/Dart-v3.10.4+-blue.svg)
![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20macOS%20%7C%20Windows%20%7C%20Web-lightgrey.svg)

## ✨ Features

### 🎨 Drawing Tools
- **Pen Tool**: Draw with multiple colors and adjustable stroke width (2-15px)
- **Eraser Tool**: Remove drawings with adjustable eraser size (15-200px)
- **Highlighter Tool**: Temporarily highlight areas with a translucent effect (auto-fades after 2 seconds)
- **Hand Tool**: Pan and navigate across the infinite canvas

### 🎯 Core Features
- **Infinite Canvas**: Draw without boundaries using InteractiveViewer
- **Multi-Page Support**: Create, switch between, and delete multiple drawing pages
- **Color Palette**: Quick access to 6 preset colors (Black, Red, Green, Yellow, Blue, Teal)
- **Zoom Controls**: Pinch-to-zoom, two-finger pan, and slider-based zoom (0.1x to 5x)
- **Custom Cursors**: Context-aware cursors for each tool
- **Responsive Design**: Optimized UI with minimum window size of 800x600

### 🖱️ Input Support
- Mouse and trackpad navigation
- Touch gestures (2-finger pan/zoom)
- Smooth drawing experience with real-time rendering

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.10.4 or higher)
- Dart SDK (3.10.4 or higher)
- Platform-specific requirements:
  - **macOS**: Xcode and CocoaPods
  - **Windows**: Visual Studio 2022 with C++ tools
  - **Linux**: GTK development libraries
  - **Web**: Chrome, Edge, or Firefox

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/AbabilX/white_board.git
   cd white_board
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   
   For desktop (macOS, Linux, Windows):
   ```bash
   flutter run -d macos    # For macOS
   flutter run -d linux    # For Linux
   flutter run -d windows  # For Windows
   ```
   
   For web:
   ```bash
   flutter run -d chrome
   ```

### Building for Production

```bash
# Desktop
flutter build macos
flutter build linux
flutter build windows

# Web
flutter build web
```

## 📖 Usage

### Basic Controls

1. **Drawing**: Select a color from the top bar, choose the pen tool, and start drawing
2. **Erasing**: Click the eraser icon and drag over areas to erase
3. **Navigation**: Use the hand tool or two-finger gestures to pan around the canvas
4. **Zooming**: Click the zoom icon to show the zoom slider, or use pinch-to-zoom gestures
5. **Pages**: Open the drawer (left side) to add, switch, or delete pages
6. **Clear Canvas**: Click the trash icon to clear the current page
7. **Reset View**: Click the home icon to reset zoom and pan to default

### Keyboard Shortcuts & Gestures

- **Two-finger scroll**: Pan across the canvas
- **Pinch-to-zoom**: Zoom in and out (touch devices)
- **Trackpad gestures**: Supported for navigation

### Tools Panel

The bottom toolbar provides quick access to:
- Stroke width slider (adjusts based on selected tool)
- Eraser tool
- Pen tool
- Hand tool (pan mode)
- Highlighter tool
- Clear canvas
- Reset view
- Zoom controls

## 🛠️ Technical Details

### Built With

- **[Flutter](https://flutter.dev/)** - UI framework
- **[GetX](https://pub.dev/packages/get)** - State management (v4.7.3)
- **[window_manager](https://pub.dev/packages/window_manager)** - Desktop window management (v0.5.1)
- **[flutter_custom_cursor](https://pub.dev/packages/flutter_custom_cursor)** - Custom cursor support (v0.0.4)
- **[hugeicons](https://pub.dev/packages/hugeicons)** - Icon library (v1.1.4)
- **[flutter_svg](https://pub.dev/packages/flutter_svg)** - SVG support (v2.2.3)
- **[dotted_border](https://pub.dev/packages/dotted_border)** - Border styling (v3.1.0)

### Project Structure

```
lib/
├── main.dart                          # App entry point
└── src/
    └── home/
        ├── board/
        │   ├── board.dart            # Main board widget
        │   └── widget/
        │       ├── board_drawer.dart # Page navigation drawer
        │       └── page.dart         # Individual page widget
        ├── drawing_path/
        │   └── drawing_path.dart     # Path data model
        ├── painter/
        │   └── board_custom_painter.dart  # Canvas painter
        └── pointers/
            └── mouse_pointers.dart   # Custom cursor definitions
```

### Key Components

- **Board**: Main canvas widget with tool management and gesture handling
- **DrawingPath**: Data model for storing drawing strokes with color, width, and type
- **PaintingPage**: Container for multiple drawing paths per page
- **BoardCustomPainter**: Custom painter for rendering paths on canvas
- **MousePointers**: Singleton for managing custom cursor assets

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is currently unlicensed. Please contact the repository owner for licensing information.

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- All package maintainers for their excellent libraries
- Icons provided by HugeIcons

## 📧 Contact

Project Link: [https://github.com/AbabilX/white_board](https://github.com/AbabilX/white_board)

---

**Note**: This project is under active development. Features and documentation may change.
