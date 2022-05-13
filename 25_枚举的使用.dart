// 枚举 enum ,枚举作用是安全，保证传入的数据安全，不会有其他规定以外的数据传入
void main(List<String> args) {
  final color = Colors.red;
  switch(color) {
    case Colors.red:
    print("red");
    break;
    case Colors.blue:
    print("blue");
    break;
  }
  print(Colors.values);
  print(Colors.red.index);
}
enum Colors {
  red,
  blue
}