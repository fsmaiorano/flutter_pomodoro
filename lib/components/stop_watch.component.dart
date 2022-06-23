import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StopWatch extends StatelessWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'Work time',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
