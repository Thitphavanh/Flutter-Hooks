import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

const url = 'https://bit.ly/3x7J5Qt';

enum Action {
  rotateLeft,
  rotateRight,
  moreVisible,
  lessVisible,
}

@immutable
class State {
  final double rotationDeg;
  final double alpha;

  const State({
    required this.rotationDeg,
    required this.alpha,
  });
  const State.zero()
      : rotationDeg = 0.0,
        alpha = 1.0;

  State rotateRight() => State(
        alpha: alpha,
        rotationDeg: rotationDeg + 10.0,
      );
  State rotateLeft() => State(
        alpha: alpha,
        rotationDeg: rotationDeg - 10.0,
      );

  State increaseAlpha() => State(
        alpha: min(alpha + 0.1, 1.0),
        rotationDeg: rotationDeg,
      );
  State decreaseAlpha() => State(
        alpha: max(alpha - 0.1, 0.0),
        rotationDeg: rotationDeg,
      );
}

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
    );
  }
}
