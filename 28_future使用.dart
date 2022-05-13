import 'dart:io';

void main(List<String> args) {
  print("main start");
  //发送一个网络请求
  var future = getNetworkData();
  print(future);

  //需要在Future函数有结果，才执行下面的回调函数
  future.then((String value) {
    print(value);
  }).catchError((onError){
    print(onError);
  }).whenComplete(() => print("代码执行完成"));
    print("main end");
}
//模拟一个网络请求
Future<String> getNetworkData() {
  //将耗时的操作包裹在future的回调函数中
  //只要有回调函数，那么就执行Future对应的then的回调
  //如果没有结果返回，就抛出一个异常
  return Future<String>(() {
      sleep(Duration(seconds: 3));
      return "Hello World";
      throw Exception("错误信息");
    }
  );
}