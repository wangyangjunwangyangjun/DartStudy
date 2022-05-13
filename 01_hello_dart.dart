// main(List<String> args) {
//     // print("Hello World");

//     // 1.变量声明
//     String name = "WYJ";

//     // 2.类型推导（var、final、const）
//     // 变量是有类型的
//     var age = 20;
//     age = 30;

//     // 3.final、const都是定义常量
//     final height = 1.99;
//     // height = 2.00;
//     const address  ="浙江省";
//     // address = "杭州市";

//     //final与const之间的区别-final可以通过计算赋值，const必须赋值
//     // const date1 = DateTime.now();写法错误
//     final date1 = DateTime.now();

//     //p1和p2不是同一个对象
//     final p1 = Person("why");
//     final p2 = Person("why");
//     print(identical(p1, p2));

//     //p1和p2是同一个对象
//     const p3 = const Person("why");
//     const p4 = const Person("why");
//     const p5 = const Person("wangMing");
//     print(identical(p3, p4));
//     print(identical(p4, p5));
// }

// class Person {
//   final String name;
//   const Person(this.name);
// }