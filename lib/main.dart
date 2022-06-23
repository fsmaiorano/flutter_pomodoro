import 'package:flutter/material.dart';
import 'package:flutter_pomodoro/pages/pomodoro.page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pomodoro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PomodoroPage(),
    );
  }
}

// final store = CounterStore();

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return (Scaffold(
//       appBar: AppBar(
//         title: const Text("Pomodoro"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Observer(
//               key: const Key('counter'),
//               builder: (_) => Text(
//                 '${store.counter}',
//                 style: Theme.of(context).textTheme.headline4,
//               ),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => store.increment(),
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     ));
//   }
// }
