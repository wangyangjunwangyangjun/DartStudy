void main(List<String> args) {
  final map = Map();
  print(map.runtimeType);
  // final s = Shape();
}

//抽象类不能调用原本的方法来实例化
abstract class Shape {
  int getArea();
  String getInfo() {
    return "形状";
  }

  //通过工厂实例化
  // factory Shape() {
  //   return Rectangle();
  // }
}

//继承自抽象类后，抽象类必须实现抽象类的抽象方法
// class Rectangle extends Shape {
//   @override
//   int getArea() {
//     return 100;
//   }
// }