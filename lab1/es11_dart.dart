
void main(List<String> args) {
  List<int> input = [1,1, 4,5,6,8,8,4,6,7];
  print(removeDups(input));
}

List<int> removeDups(List<int> input) {
  List<int> out = [];
  for (var element in input){
    if(!out.contains(element)){
      out.add(element);
    }
  }
  return out;
}
