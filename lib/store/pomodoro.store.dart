import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum TypeBreak { work, rest }

abstract class _PomodoroStore with Store {
  @observable
  bool isRunning = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int timeWork = 2;

  @observable
  int timeRest = 1;

  @observable
  TypeBreak typeBreak = TypeBreak.work;

  Timer? stopwatchTimer;

  @action
  void run() {
    isRunning = true;
    stopwatchTimer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (minutes == 0 && seconds == 0) {
          _toggleTypeBreak();
        } else if (seconds == 0) {
          minutes--;
          seconds = 59;
        } else {
          seconds--;
        }
      },
    );
  }

  @action
  void stop() {
    isRunning = false;
    stopwatchTimer?.cancel();
  }

  @action
  void restart() {
    // isRunning = false;
    minutes = isWork() ? timeWork : timeRest;
    seconds = 0;
  }

  @action
  void incrementTimeWork() {
    timeWork++;
    if (isWork()) {
      restart();
    }
  }

  @action
  void decrementTimeWork() {
    timeWork--;
    if (isWork()) {
      restart();
    }
  }

  @action
  void incrementTimeRest() {
    timeRest++;
    if (isRest()) {
      restart();
    }
  }

  @action
  void decrementTimeRest() {
    timeRest--;
    if (isRest()) {
      restart();
    }
  }

  @action
  bool isWork() {
    return typeBreak == TypeBreak.work;
  }

  @action
  bool isRest() {
    return typeBreak == TypeBreak.rest;
  }

  void _toggleTypeBreak() {
    if (isWork()) {
      typeBreak = TypeBreak.rest;
      minutes = timeRest;
    } else {
      typeBreak = TypeBreak.work;
      minutes = timeWork;
    }
    seconds = 0;
  }
}
