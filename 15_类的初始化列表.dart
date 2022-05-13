void main(List<String> args) {
  var p1 = Person("why");
  print(p1.age);
  var p2 = Person("why", age: 18);
  print(p2.age);
}
const temp = 20;
class Person {
  final String name;
  final int age;

  // 初始化age，初始化列表
  // Person(this.name): age = 10;

  // 方法一赋值，无法实现复杂表达式的赋值
  // Person(this.name, {this.age = 10});

  //方法二赋值，简单赋值表达式会很长，但是能实现复杂表达式赋值
  // Person(this.name, {age}): this.age = age ?? 10;

  Person(this.name, {age}): this.age = temp > 20? 30: 50{}
}