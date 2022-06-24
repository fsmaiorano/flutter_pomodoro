import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_pomodoro/components/input_time.component.dart';
import 'package:flutter_pomodoro/components/stop_watch.component.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro.store.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: StopWatch()),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Observer(
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InputTime(
                      title: 'Work',
                      value: store.timeWork,
                      doIncrementTime: store.incrementTimeWork,
                      doDecrementTime: store.decrementTimeWork,
                    ),
                    InputTime(
                      title: 'Rest',
                      value: store.timeRest,
                      doIncrementTime: store.incrementTimeRest,
                      doDecrementTime: store.decrementTimeRest,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
