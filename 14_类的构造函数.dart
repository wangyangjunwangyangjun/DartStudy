void main(List<String> args) {
  // Object调用方法时，编译时会出错
  // dynamic编译不会报错，但是运行时会报错

  // Object obj = "why";
  // print(obj.substring(1));

  dynamic obj = "why";
  // dynamic obj = 123;
  print(obj.substring(1));

  var p = Person.withNameAgeHeight("why", 18, 178.1);

  var p1 = Person.fromMap({
    "name": "lilei",
    "age": 18,
    "height": 178.1 
  });
  print(p1);
}
class Person {
  String name = "";
  int age = 0;
  double height = 0.0;

  Person(this.name,this.age);

  //命名构造函数
  //这里的withNameAgeHeight和fromMap都是自定义的
  Person.withNameAgeHeight(this.name, this.age, this.height);
  Person.fromMap(Map<String, dynamic> map) {
    this.name = map["name"];
    this.age = map["age"];
    this.height = map["height"];
  }

  @override
  String toString() {
    return "$name $age $height";
  }
}