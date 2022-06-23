import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

// ignore: library_private_types_in_public_api
class PomodoroStore = _PomodoroStore with _$PomodoroStore;

abstract class _PomodoroStore with Store {
  @observable
  int timeWork = 2;

  @observable
  int timeRest = 1;

  @action
  void incrementTimeWork() {
    timeWork++;
  }

  @action
  void decrementTimeWork() {
    timeWork--;
  }

  @action
  void incrementTimeRest() {
    timeRest++;
  }

  @action
  void decrementTimeRest() {
    timeRest--;
  }
}
