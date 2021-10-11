import 'dart:async';
import 'package:flutter/material.dart';

class Debounce {
  Debounce(this.duration);

  Duration duration;
  Timer? _timer;

  void call(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(duration, action);
  }
}
