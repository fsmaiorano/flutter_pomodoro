// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  late final _$isRunningAtom =
      Atom(name: '_PomodoroStore.isRunning', context: context);

  @override
  bool get isRunning {
    _$isRunningAtom.reportRead();
    return super.isRunning;
  }

  @override
  set isRunning(bool value) {
    _$isRunningAtom.reportWrite(value, super.isRunning, () {
      super.isRunning = value;
    });
  }

  late final _$minutesAtom =
      Atom(name: '_PomodoroStore.minutes', context: context);

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  late final _$secondsAtom =
      Atom(name: '_PomodoroStore.seconds', context: context);

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  late final _$timeWorkAtom =
      Atom(name: '_PomodoroStore.timeWork', context: context);

  @override
  int get timeWork {
    _$timeWorkAtom.reportRead();
    return super.timeWork;
  }

  @override
  set timeWork(int value) {
    _$timeWorkAtom.reportWrite(value, super.timeWork, () {
      super.timeWork = value;
    });
  }

  late final _$timeRestAtom =
      Atom(name: '_PomodoroStore.timeRest', context: context);

  @override
  int get timeRest {
    _$timeRestAtom.reportRead();
    return super.timeRest;
  }

  @override
  set timeRest(int value) {
    _$timeRestAtom.reportWrite(value, super.timeRest, () {
      super.timeRest = value;
    });
  }

  late final _$typeBreakAtom =
      Atom(name: '_PomodoroStore.typeBreak', context: context);

  @override
  TypeBreak get typeBreak {
    _$typeBreakAtom.reportRead();
    return super.typeBreak;
  }

  @override
  set typeBreak(TypeBreak value) {
    _$typeBreakAtom.reportWrite(value, super.typeBreak, () {
      super.typeBreak = value;
    });
  }

  late final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore', context: context);

  @override
  void run() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.run');
    try {
      return super.run();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stop() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.stop');
    try {
      return super.stop();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restart() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.restart');
    try {
      return super.restart();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementTimeWork() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementTimeWork');
    try {
      return super.incrementTimeWork();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTimeWork() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementTimeWork');
    try {
      return super.decrementTimeWork();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementTimeRest() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementTimeRest');
    try {
      return super.incrementTimeRest();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTimeRest() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementTimeRest');
    try {
      return super.decrementTimeRest();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool isWork() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.isWork');
    try {
      return super.isWork();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool isRest() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.isRest');
    try {
      return super.isRest();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isRunning: ${isRunning},
minutes: ${minutes},
seconds: ${seconds},
timeWork: ${timeWork},
timeRest: ${timeRest},
typeBreak: ${typeBreak}
    ''';
  }
}
