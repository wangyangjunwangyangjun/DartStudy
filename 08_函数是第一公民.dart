void main(List<String> args) {
  test(bar);
  test(() {
    print("匿名函数被调用");
    return 10;
  });
  //箭头函数：条件是只能有一行代码
  test(() => print("箭头函数被调用"));
}
//函数可以作为另一个函数的参数
void test(Function foo){
  var resulet = foo();
}
void bar(){
  print("bar函数被调用");
}