import 'dart:async';

Future<void> main() async {
  // Stream.periodic(const Duration(seconds: 1), (x)=>x).listen(print);
  // Stream.periodic(const Duration(seconds: 2), (x)=>x).listen(print);
  // Stream.fromFutures([Future(()=>3), Future.value(2)]).listen(print);

  final StreamController streamController = StreamController<int>.broadcast();
  final streamSubscription = streamController.stream.listen(print);
  final otherStreamSubscription = streamController.stream.listen(print);

  var value = 0;
  Timer.periodic(const Duration(seconds: 1), (timer){
    if(value ==5){
      timer.cancel();
      streamController.close();
      // streamSubscription.cancel();
      // otherStreamSubscription.cancel();
    }else{
      streamController.add(value++);
    }
  });

  var max = 0;
  await streamController.stream.forEach((value){
    max = (value > max)? value:max;
  });

  print('Max is --> $max');
}