void main(List<String> args) {
  sayHello1("why");
  sayHello2("why",18,178.1);
  sayHello3("why",age: 18, height: 178.1);
}
void sayHello1(String name){
  print(name);
}
//dart中没有函数的重载
//可选参数：位置可选参数-命名可选参数
//***位置可选参数***
//实参和形参进行匹配时，是根据位置进行匹配的
void sayHello2(String name, [int age = 0, double height = 0]) {
  print("my name is" + name + "; age is ${age}; height is ${height};");
}
//***命名可选参数***
void sayHello3(String name, {int age = 0, double height = 0}) {
  print("my name is" + name + "; age is ${age}; height is ${height};");
}