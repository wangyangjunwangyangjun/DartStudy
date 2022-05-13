import 'dart:io';

void main(List<String> args) {
  print("Main Start");

  Future(() {
    sleep(Duration(seconds: 3));
    return "第一次结果";
  }).then((value) {
    print(value);
    //第二次请求
    sleep(Duration(seconds: 2));
    return "第二次结果";
  }).then((value) {
    print(value);
    //第三次请求
    sleep(Duration(seconds: 1));
    return "第三次结果";
  }).then((value) => print(value));

  print("Main end");
}