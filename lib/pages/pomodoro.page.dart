import 'package:flutter/material.dart';
import 'package:flutter_pomodoro/components/input_time.component.dart';
import 'package:flutter_pomodoro/components/stop_watch.component.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: StopWatch()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                InputTime(title: 'Work', value: 25),
                InputTime(title: 'Rest', value: 5)
              ],
            ),
          )
        ],
      ),
    );
  }
}
