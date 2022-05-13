void main(List<String> args) {
  Person p = Person("WYJ");
  print("My name is ${p.name}, age is ${p.age}");
}

// 这里赋初始值是通过调用_internal函数的方式
// age 数值并未传入，但是初始化为0
class Person {
  String name;
  int age;
  Person(String name) :this._internal(name, 0);
  Person._internal(this.name,this.age);
}