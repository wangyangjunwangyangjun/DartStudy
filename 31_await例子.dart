import 'dart:io';
void main(List<String> args) {
  print("main start");
  getData();
  print("main end");
}
void getData() async{
  //调用三次网络请求
  // getNetworkData("arguement").then((value) {
  //   print(value);
  //   return getNetworkData(value);
  // }).then((value) {
  //   print(value);
  //   return getNetworkData(value);
  // }).then((value) {
  //   print(value);
  // });
  var res1 = await getNetworkData("arguement");
  print(res1);
  var res2 = await getNetworkData(res1);
  print(res2);
  var res3 = await getNetworkData(res2);
  print(res3);
}
Future getNetworkData(String arg) {
  return Future((() {
    sleep(Duration(seconds: 3));
    return "Hello World" + arg;
  }));
}
