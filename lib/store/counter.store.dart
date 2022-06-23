import 'package:mobx/mobx.dart';

part 'counter.store.g.dart';

// ignore: library_private_types_in_public_api
class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }
}
