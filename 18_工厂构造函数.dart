void main(List<String> args) {
  final p1 = Person.withName("why");
  final p2 = Person.withName("why");
  print(identical(p1, p2));

  // final p1 = Person.withColor("yellow");
  // final p2 = Person.withColor("yellow");
  // print(identical(p1, p2));

  // final p1 = Person.withColor("yellow1");
  // final p2 = Person.withColor("yellow2");
  // print(identical(p1, p2));
}

//工厂构造函数最大的特点是可以手动的返回一个对象
//普通构造函数会自动返回创建出来的对象，不能手动的返回
class Person {
  String name;
  String color;

  /* 缓存，当传入的姓名是一样的时候，
   就返回缓存中的已有实例，否则创建新的实例*/
  static final Map<String, dynamic> _nameCache = <String, Person>{};
  static final Map<String, dynamic> _colorCache = <String, Person>{};

  //返回类型为factory，意味着必须返回一个实例。
  //自定义withName函数
  factory Person.withName(String name) {
    //判断map中有没有该名字
    if(_nameCache.containsKey(name)) {
      //有名字则返回已有的实例
      return _nameCache[name];
    } else {
      //否则创建新实例，同时color设置为"default"
      final p = Person(name, "default");
      _nameCache[name] = p;
      return p;
    }
  }

  //  类似有下面函数
  factory Person.withColor(String color) {
    if(_colorCache.containsKey(color)) {
      return _colorCache[color];
    } else {
      final p = Person("default", color);
      _colorCache[color] = p;
      return p;
    }
  }

  Person(this.name, this.color);
}