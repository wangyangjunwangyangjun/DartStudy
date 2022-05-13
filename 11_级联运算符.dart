main(List<String> args) {
  var p = person()
            ..name = "why"
            ..eat()
            ..run();
  print(p.name);
}
class person {
  String name = "";

  void run() {
    print("running...");
  }

  void eat() {
    print("eating...");
  }
}