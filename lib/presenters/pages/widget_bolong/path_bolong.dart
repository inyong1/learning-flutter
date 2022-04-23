import 'dart:math';

import 'package:flutter/material.dart';

class PathBolong extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path1 = Path()..addRect(Rect.fromLTRB(0, 0, size.width, size.height));
    final center = Offset(size.width / 2, size.height / 2);
    final besarLingkaran = 0.75 * min(size.width, size.height);
    final lingkaran = Rect.fromCenter(
        center: center, width: besarLingkaran, height: besarLingkaran);
    final path2 = Path()..addOval(lingkaran);
    return Path.combine(PathOperation.difference, path1, path2);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
