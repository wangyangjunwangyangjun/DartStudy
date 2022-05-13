void main(List<String> args) {
  final message = "Hello World";
  final result = message.by_split(" ");
  print(result);
}
extension StrSplit on String {
  List<String> by_split(String split) {
    return this.split(split);
  }
}