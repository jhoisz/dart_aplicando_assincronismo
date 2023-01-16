import 'dart:async';

void main() async {
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;

    while (i != maxCount) {
      // print("Counting: $i");
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print("The Stream is finished");
  }

  var jhoisStream = myStream(1).asBroadcastStream();

  StreamSubscription mySubscriber = jhoisStream.listen((event) {
    if (event.isEven) {
      print("This number is even");
    }
  }, onError: (e) {
    print("An error happend: $e");
  }, onDone: () {
    print("The subscriber is done");
  });

  jhoisStream.map((event) => 'Subscriber 2 watching: $event').listen(print);

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print('Stream paused');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print('Stream resumed');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print('Stream canceled');

  print("Main is finished");
}
