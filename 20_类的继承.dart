void main(List<String> args) {
  final p = Person("name", 10);
  print(p.name);
  print(p.age);
}

class Animal {
  int age;
  Animal(this.age);
}
class Person extends Animal {
  String name;

  //super(age)相当于调用Animal(this.age);
  Person(this.name, int age): super(age);
}
