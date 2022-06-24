import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro.store.dart';
import 'stop_watch_button.dart';

class StopWatch extends StatelessWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) => Container(
        color: store.isWork() ? Colors.red : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              store.isWork() ? 'Work' : 'Rest',
              style: const TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
              style: const TextStyle(
                fontSize: 120,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!store.isRunning)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: StopWatchButton(
                      text: "Start",
                      icon: Icons.play_arrow,
                      onPressed: store.run,
                    ),
                  ),
                if (store.isRunning)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: StopWatchButton(
                      text: "Stop",
                      icon: Icons.stop,
                      onPressed: store.stop,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: StopWatchButton(
                    text: "Restart",
                    icon: Icons.refresh,
                    onPressed: store.restart,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
