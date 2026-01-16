import 'package:flutter/material.dart';
import 'package:white_board/src/home/drawing_path/drawing_path.dart';
import 'package:white_board/src/home/painter/board_custom_painter.dart';

class PaintingPage extends StatelessWidget {
  const PaintingPage({super.key, required this.paths});
  final List<DrawingPath> paths;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BoardPainter(paths: paths),
      size: Size.infinite,
    );
  }
}
