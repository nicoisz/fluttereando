import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 20;
  double _height = 20;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(19);

  void onChangeShape() {
    _width = Random().nextInt(500) == 0
        ? Random().nextInt(500).toDouble() + 10
        : Random().nextInt(500).toDouble() + 10;
    _height = Random().nextInt(500) == 0
        ? Random().nextInt(500).toDouble() + 10
        : Random().nextInt(500).toDouble() + 10;
    _color = Color.fromRGBO(Random().nextInt(255) + 1,
        Random().nextInt(255) + 1, Random().nextInt(255) + 1, 1);
    _borderRadius =
        BorderRadius.circular(Random().nextInt(255).toDouble() + 1.0);

    print({_width, _height, _color, _borderRadius});

    if (_width > 0 && _height > 0) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("animated"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.decelerate,
          height: _height <= 0 ? _height : _height + 10,
          width: _width <= 0 ? _width : _width + 10,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow_outlined),
        onPressed: onChangeShape,
      ),
    );
  }
}
