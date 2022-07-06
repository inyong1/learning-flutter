import 'dart:math';

import 'package:flutter/material.dart';

class SineWavePage extends StatefulWidget {
  const SineWavePage({Key? key}) : super(key: key);

  @override
  State<SineWavePage> createState() => _SineWavePageState();
}

class _SineWavePageState extends State<SineWavePage>
    with TickerProviderStateMixin {
  late AnimationController movingAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      animationBehavior: AnimationBehavior.preserve);
  late AnimationController amplitudoAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
      animationBehavior: AnimationBehavior.preserve);
  double amplitudoAnimation = 1.0;

  @override
  void initState() {
    amplitudoAnimationController.forward();
    movingAnimationController.repeat();
    movingAnimationController.addListener(() {
      amplitudoAnimation = movingAnimationController.value;
      setState(() {});
    });
    amplitudoAnimationController.addListener(() {
      amplitudoAnimation = amplitudoAnimationController.value - 0.5;
      if (amplitudoAnimationController.status == AnimationStatus.completed) {
        amplitudoAnimationController.reverse();
      } else if (amplitudoAnimationController.status ==
          AnimationStatus.dismissed) {
        amplitudoAnimationController.forward();
      }
    });
  }

  @override
  void dispose() {
    movingAnimationController.dispose();
    amplitudoAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sine Wave Page'),
      ),
      body: Center(
        child: Container(
          color: Colors.amber,
          child: ClipPath(
            clipper: SineWaveClipper(
                movingAnimation: movingAnimationController.value,
                amplitudoAnimation: amplitudoAnimation),
            child: Container(
              height: 200,
              width: 300,
              color: Colors.purpleAccent,
            ),
          ),
        ),
      ),
    );
  }
}

class SineWaveClipper extends CustomClipper<Path> {
  final double movingAnimation;
  final double amplitudoAnimation;
  final double amplitudo = 50.0;

  const SineWaveClipper(
      {required this.movingAnimation, this.amplitudoAnimation = 1.0});

  @override
  Path getClip(Size size) {
    final path = Path();
    final degreeStep = 2 * 2 * pi / size.width;
    for (double x = 0.0; x < size.width; x++) {
      // akan seolah2 berjalan.
      // positive jalan ke kiri
      // negative jalan ke kanan
      double shift = 2 * pi * movingAnimation * -1;
      final degree = degreeStep * x + shift;

      final y = (sin(degree)) * amplitudo + amplitudo;
      // print("x:$x degree:$degree y:$y");
      path.lineTo(x, y);
    }
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
