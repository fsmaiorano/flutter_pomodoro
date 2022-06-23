import 'package:flutter/material.dart';

class InputTime extends StatelessWidget {
  final String title;
  final int value;

  const InputTime({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(title), Text(value.toString())],
    );
  }
}
