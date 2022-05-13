import 'dart:isolate';

void main(List<String> args) async{
  print("main start");

  // 1.创建Isolate
  Isolate.spawn((int message) { 
    var total = 0;
    for(var i=0;i<message;i++){
      total+=i;
    }
    print(total);
  }, 100);

  //iolate双向通信
  // 1.创建管道
  ReceivePort receivePort = ReceivePort();
  // 2.创建Isolate
  Isolate isolate = await Isolate.spawn<SendPort>(foo, receivePort.sendPort);
  // 3.监听管道
  receivePort.listen((message) {
    print(message);
    receivePort.close();
    isolate.kill();
  },);

  print("main end");
}

void foo(SendPort sendPort) {
  return sendPort.send("Hello World");
}