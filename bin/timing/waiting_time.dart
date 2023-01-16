class BotClock {
  Future clock(int seconds) {
    return Future.delayed(Duration(seconds: seconds));
  }

  Stream jhoiszStream(int interval, [int? maxCount]) async* {
    int i = 1;

    while (i != maxCount) {
      // print("Counting: $i");
      await Future.delayed(Duration(seconds: interval));

      yield i++;
    }
    print("The Stream is finished");
  }
}
