//dart支持函数式编程，但是大部分是面向对象，即类
void main(List<String> args) {
  var p = Person("why", 18);
}
class Person {
  String name;
  int age;

  ////原本写法
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  //简便写法
  Person(this.name, this.age);
}