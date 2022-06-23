import 'package:flutter/material.dart';
import 'package:flutter_pomodoro/components/stop_watch_button.dart';

class StopWatch extends StatelessWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Work time',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                  padding: EdgeInsets.only(right: 10),
                  child:
                      StopWatchButton(text: "Start", icon: Icons.play_arrow)),
              // Padding(
              //     padding: EdgeInsets.only(right: 10),
              //     child: StopWatchButton(text: "Stop", icon: Icons.stop)),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: StopWatchButton(text: "Restart", icon: Icons.refresh),
              ),
            ],
          )
        ],
      ),
    );
  }
}
