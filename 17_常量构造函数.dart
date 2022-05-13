void main(List<String> args) {
  //这里传入相同的名称时，指向的是同一个实例
  const p1 = Person("why");
  const p2 = Person("why");
  print(identical(p1, p2));

  // const p1 = Person("why1");
  // const p2 = Person("why2");
  // print(identical(p1, p2));
}

class Person {
  final String name;
  final int age;

  //常量构造函数
  const Person(this.name): this.age = 0;

  //dart不支持函数的重改
  // const Person(this.name, this.age);
}