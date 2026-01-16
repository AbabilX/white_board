import 'dart:ui';

import 'package:white_board/src/home/board/board.dart';

class DrawingPath {
  final Color color;
  final List<Offset> points;
  final double strokeWidth;
  final BoardTool type;

  DrawingPath({
    required this.color,
    required this.points,
    required this.strokeWidth,
    required this.type,
  });
}
