void main(List<String> args) {
  // ??= 有值则不赋值，没有值则赋值
  var name1 = "why";
  name1 ??= "lilei";
  print(name1);

  var name2 = null;
  name2 ??= "lilei";
  print(name2);

  //前面的数据为null，那么就使用后面的数据
  var name = null;
  var temp = name ?? "lilei";
  print(temp);
}