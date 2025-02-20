void main() {
  emitNumbers().listen((int value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumbers() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];

  // NOTE: Similar as for-await-of in JS/TS
  for (var value in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield value; // NOTE: In this case, the `yield` keyword is used to emit values from the stream because functions like a return
  }
}
