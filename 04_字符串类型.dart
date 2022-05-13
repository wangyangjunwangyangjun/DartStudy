void main(List<String> args) {
  var str1 = 'abc';
  var str2 = "abc";
  var str3 = """
  abc
  def
  """;

  var name = "why";
  var age = 19;
  var height = 1.99;
  var message1 = "my name is ${name}, age is ${age}, height is ${height}";
  var message2 = "name is ${name}, type is ${name.runtimeType}";
  print(message1);
  print(message2);
}