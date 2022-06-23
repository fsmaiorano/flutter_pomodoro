import 'package:flutter/material.dart';

class StopWatchButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const StopWatchButton({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        textStyle: const TextStyle(
          fontSize: 25,
        ),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              size: 40,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
