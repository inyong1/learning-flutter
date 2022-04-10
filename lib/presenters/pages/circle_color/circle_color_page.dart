import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learning_flutter/presenters/pages/circle_color/circle_color_painter.dart';

class CircleColorPage extends StatelessWidget {
  const CircleColorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Circle Color'),
        ),
        body: Container(
          padding: const EdgeInsets.all(24),
          alignment: Alignment.center,
          child: LayoutBuilder(
            builder: (context, constraints) {
              final size = min(constraints.maxWidth, constraints.maxHeight);
              return Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                width: size,
                height: size,
                child: CustomPaint(
                  painter: CircleColorPainter(),
                ),
              );
            },
          ),
        ));
  }
}
