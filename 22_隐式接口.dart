void main(List<String> args) {
  
}

//Dart中没有关键字定义接口，默认所有的
//当将一个类当作接口使用时，那么实现这个接口的类，必须实现这个接口中的所有方法
class Runner {
  void running() {
    print("running");
  }
}
class Flyer {
  void flying() {

  }
}
class Animal {
  void eating() {
    print("动物吃东西");
  }
}
class Superman extends Animal implements Flyer, Runner {
  @override
  void running() {
    // TODO: implement running
  }
  @override
  void flying() {
    // TODO: implement flying
  }
  @override
  void eating() {
    // TODO: implement eating
    super.eating();
  }
}