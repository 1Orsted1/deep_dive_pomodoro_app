import 'count_down_controller.dart';

class CountDown {
  CountDown({
    required this.seconds,
    this.onFinished,
    required this.interval,
    this.controller,
    this.secondsFactor = 10000,
  });

  /// Length of the timer
  final int seconds;

  /// Called when finished
  final Function? onFinished;

  /// Build interval
  final Duration interval;

  /// Controller
  final CountdownController? controller;

  // Multiplier of secconds
  final int secondsFactor;





}
