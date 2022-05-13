void main(List<String> args) {
  Future(() {
    return "Hello World";
  },).then((value) => print(value));

  Future.value("hahaha").then((value) => print(value));

  Future.error("error").catchError((Error){
    print(Error);
  });

  Future<String>.delayed(Duration(seconds: 3)).then((value) {
    return "Hello";
  }).then((value) => print(value));
}