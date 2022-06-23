import 'package:flutter/material.dart';

class InputTime extends StatelessWidget {
  final String title;
  final int value;

  const InputTime({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        Row(
          children: [
            ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                primary: Colors.red,
              ),
              child: const Icon(Icons.arrow_downward, color: Colors.white),
            ),
            Text(value.toString()),
            ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                primary: Colors.red,
              ),
              child: const Icon(Icons.arrow_upward, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
