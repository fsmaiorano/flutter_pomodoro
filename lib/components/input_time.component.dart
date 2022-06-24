import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro.store.dart';

class InputTime extends StatelessWidget {
  final String title;
  final int value;

  final void Function()? doIncrementTime;
  final void Function()? doDecrementTime;

  const InputTime(
      {Key? key,
      required this.title,
      required this.value,
      required this.doIncrementTime,
      required this.doDecrementTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title, style: const TextStyle(fontSize: 25)),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: doDecrementTime,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                primary: store.isWork() ? Colors.red : Colors.green,
              ),
              child: const Icon(Icons.arrow_downward, color: Colors.white),
            ),
            Text('$value min', style: const TextStyle(fontSize: 18)),
            ElevatedButton(
              onPressed: doIncrementTime,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                primary: store.isWork() ? Colors.red : Colors.green,
              ),
              child: const Icon(Icons.arrow_upward, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
