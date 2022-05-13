void main(List<String> args) {
  // 1.列表List
  var names = ["abc", "cba", "nba"];
  names.add("value");
  
  // 2.集合Set
  var movies = {"aaa", "bbb", "ccc"};
  names = Set<String>.from(names).toList();
  print(names);

  // 3.映射Map
  var info = {
    "name":"key",
    "age":18
  };
}