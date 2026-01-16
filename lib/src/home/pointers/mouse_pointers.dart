import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_custom_cursor/cursor_manager.dart';
import 'package:image/image.dart' as img2;

class MousePointers {
  static final MousePointers instance = MousePointers._();

  MousePointers._();

  late Uint8List memoryCursorDataRawBGRA;
  late Uint8List memoryCursorDataRawPNG;
  late String cursorName;
  Future<void> penPointer() async {
    final bytes = await rootBundle.load('assets/cursors/pen.png');

    // Decode original image
    final original = img2.decodeImage(bytes.buffer.asUint8List())!;

    // 🔽 Resize image (change size here)
    final resized = img2.copyResize(
      original,
      width: (original.width / 4).round(), // adjust scale
      height: (original.height / 4).round(),
      interpolation: img2.Interpolation.average,
    );

    // Encode resized versions
    memoryCursorDataRawPNG = Uint8List.fromList(img2.encodePng(resized));
    memoryCursorDataRawBGRA = Uint8List.fromList(img2.encodeBmp(resized));

    cursorName = await CursorManager.instance.registerCursor(
      CursorData()
        ..name = "pen"
        ..buffer = Platform.isWindows
            ? memoryCursorDataRawBGRA
            : memoryCursorDataRawPNG
        ..width = resized.width
        ..height = resized.height
        ..hotX = (resized.width / 2)
        ..hotY = (resized.height / 2),
    );
  }

  Future<void> eraserPointer(int size) async {
    // print("calling");
    final bytes = await rootBundle.load('assets/cursors/eraser.png');

    // Decode original image
    final original = img2.decodeImage(bytes.buffer.asUint8List())!;

    // 🔽 Resize image (change size here)
    final resized = img2.copyResize(
      original,
      width: (original.width / 3).round() + size, // adjust scale
      height: (original.height / 3).round() + size,
      interpolation: img2.Interpolation.average,
    );

    // Encode resized versions
    memoryCursorDataRawPNG = Uint8List.fromList(img2.encodePng(resized));
    memoryCursorDataRawBGRA = Uint8List.fromList(img2.encodeBmp(resized));

    cursorName = await CursorManager.instance.registerCursor(
      CursorData()
        ..name = "eraser"
        ..buffer = Platform.isWindows
            ? memoryCursorDataRawBGRA
            : memoryCursorDataRawPNG
        ..width = resized.width
        ..height = resized.height
        ..hotX = (resized.width / 2)
        ..hotY = (resized.height / 2),
    );
  }

  Future<void> handPointer() async {
    final bytes = await rootBundle.load('assets/cursors/hand.png');

    // Decode original image
    final original = img2.decodeImage(bytes.buffer.asUint8List())!;

    // 🔽 Resize image (change size here)
    final resized = img2.copyResize(
      original,
      width: (original.width / 3).round(), // adjust scale
      height: (original.height / 3).round(),
      interpolation: img2.Interpolation.average,
    );

    // Encode resized versions
    memoryCursorDataRawPNG = Uint8List.fromList(img2.encodePng(resized));
    memoryCursorDataRawBGRA = Uint8List.fromList(img2.encodeBmp(resized));

    cursorName = await CursorManager.instance.registerCursor(
      CursorData()
        ..name = "hand"
        ..buffer = Platform.isWindows
            ? memoryCursorDataRawBGRA
            : memoryCursorDataRawPNG
        ..width = resized.width
        ..height = resized.height
        ..hotX = (resized.width / 2)
        ..hotY = (resized.height / 2),
    );
  }

  Future<void> highlightPointer() async {
    // print("calling");
    final bytes = await rootBundle.load('assets/cursors/highlighter.png');
    // print(bytes.buffer.asUint8List());
    // Decode original image
    final original = img2.decodeImage(bytes.buffer.asUint8List())!;

    // 🔽 Resize image (change size here)
    final resized = img2.copyResize(
      original,
      width: (original.width / 6).round(), // adjust scale
      height: (original.height / 6).round(),
      interpolation: img2.Interpolation.average,
    );

    // Encode resized versions
    memoryCursorDataRawPNG = Uint8List.fromList(img2.encodePng(resized));
    memoryCursorDataRawBGRA = Uint8List.fromList(img2.encodeBmp(resized));

    cursorName = await CursorManager.instance.registerCursor(
      CursorData()
        ..name = "highlight"
        ..buffer = Platform.isWindows
            ? memoryCursorDataRawBGRA
            : memoryCursorDataRawPNG
        ..width = resized.width
        ..height = resized.height
        ..hotX = (resized.width / 3)
        ..hotY = (resized.height / 3),
    );
  }

  Future<img2.Image> getImage(Uint8List bytes) async {
    final img = img2.decodeImage(bytes)!;
    return img;
  }
}
