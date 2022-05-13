void main(List<String> args) {
  final sm = SuperMan();
  sm.running();
  sm.flying();
}
class Animal {
  void eating() {
    print("动物吃东西");
  }
  void running() {
    print("animal running");
  }
}
mixin Flyer {
  void flying() {
    print("flying");
  }
}
mixin runner {
  void running() {
    print("runner running");
  }
}

//调用顺序，先看自己有没有定义的方法，再去调用混入，没有再看继承的
class SuperMan extends Animal with runner, Flyer{
  @override
  void eating() {
    // TODO: implement eating
    super.eating();
  }
  // //加入混入就不需要写running
  // @override
  // void running() {
  //   // TODO: implement running
  //   super.running();
  // }

  //重写running，会最先调用这里的running
  // void running() {
  //   print("superMan running");
  // }
}