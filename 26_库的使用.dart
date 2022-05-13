import 'dart:io';
import 'dart:async';
import 'dart:io';
import 'dart:math';
//系统库格式： import 'dart:库的名称'
import 'util.dart' as mUtils;
// import 'util.dart' show sum, mul;
// import 'util.dart' hide sum, mul;
void main(List<String> args) {
  //math
  final num1 = 20;
  final num2 = 30;
  print(min(num1, num2));

  print(mUtils.sum(num1, num2));
  print(mUtils.mul(num1, num2));

  //下划线是区分方法是私有还是公有的
  // print(mUtils._privateSum)

}
int sum(int num1, int num2) {
  return num1 + num2;
}