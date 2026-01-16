import 'package:flutter/material.dart';
import 'package:white_board/src/home/board/board.dart';
import 'package:white_board/src/home/drawing_path/drawing_path.dart';

class BoardPainter extends CustomPainter {
  final List<DrawingPath> paths;

  BoardPainter({required this.paths});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // ..strokeCap = StrokeCap.round
    // ..strokeWidth = strokeWidth;
    Color pinkLight(double lightness) {
      return HSLColor.fromColor(Colors.pink).withLightness(lightness).toColor();
    }

    for (final path in paths) {
      paint.color = path.color;

      // paint.strokeWidth = path.strokeWidth;
      for (int i = 0; i < path.points.length - 1; i++) {
        paint.style = PaintingStyle.stroke;
        paint.strokeCap = StrokeCap.butt;
        paint.isAntiAlias = true;
        if (path.type == BoardTool.highLighter) {
          final pinkGlowCore = pinkLight(0.7); // bright neonColors.pink
          // final pinkBase = pinkLight(0.60); // normal
          // final pinkSoft = pinkLight(0.45); // soft edge
          // final pinkDark = pinkLight(0.30); // shadow

          paint.shader =
              LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  // HSLColor.fromColor(
                  //   Color(0xffFF00A7),
                  // ).withLightness(.9).toColor(),
                  // HSLColor.fromColor(
                  //   Color(0xffff00a7),
                  // ).withLightness(.90).toColor(),
                  // Colors.limeAccent,
                  // Colors.limeAccent,
                  // Colors.limeAccent,
                  pinkGlowCore, pinkGlowCore,
                  // pinkBase,
                  // pinkSoft,
                  // pinkDark,
                ],
              ).createShader(
                Rect.fromCenter(
                  center: path.points[i],
                  width: 100,
                  height: 100,
                ),
              );
        }
        // paint.blendMode = BlendMode.color;
        paint.strokeWidth = path.strokeWidth;
        canvas.drawLine(path.points[i], path.points[i + 1], paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant BoardPainter oldDelegate) => true;
}
