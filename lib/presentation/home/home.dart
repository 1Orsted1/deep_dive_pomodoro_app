import 'package:easy_pomodoro/presentation/home/widgets/timer_count_down.dart';
import 'package:flutter/material.dart';

import '../../domain/count_down/count_down_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CountdownController controller = CountdownController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Time: ",
              style: TextStyle(fontSize: 30),
            ),
            TimerCountdown(
              controller: controller,
              seconds: 20,
              build: (BuildContext context, double time) => Text(
                time.toString(),
                style: const TextStyle(
                  fontSize: 60,
                  fontStyle: FontStyle.italic,
                ),
              ),
              interval: const Duration(milliseconds: 100),
              onFinished: () {
                print('Timer is done!');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.restart(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}