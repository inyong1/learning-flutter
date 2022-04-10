import 'dart:math';

import 'package:flutter/material.dart';

class CircleColorPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    ///draw bg
    canvas.drawPaint(Paint()..color = Colors.purple.withAlpha(50));
    final paint = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 25;///paint
    final halfOfStroke = paint.strokeWidth / 2;
    final rect = Rect.fromLTRB(halfOfStroke, halfOfStroke,
        size.width - halfOfStroke, size.height - halfOfStroke);///rect
    const double sepertiga = 2 * pi / 3;///sepertiga lingkaran
    const double space = sepertiga / 6;///jarak antar garis
    final colors = [Colors.red, Colors.green, Colors.blue];
    for (int i = 0; i < colors.length; i++) {
      paint.color = colors[i];///set warna sebelum drawing
      canvas.drawArc(rect, sepertiga * i, sepertiga - space, false, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
