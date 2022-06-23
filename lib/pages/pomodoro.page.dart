import 'package:flutter/material.dart';
import 'package:flutter_pomodoro/components/InputTime.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pomodoro'),
      ),
      body: Column(
        children: const [
          Text('Pomodoro'),
          InputTime(title: 'Work', value: 25),
          InputTime(title: 'Rest', value: 5)
        ],
      ),
    );
  }
}
