void main(List<String> args) {
  String input = "Portable Network Graphics";
  print(acronym(input)); // PNG
}

String acronym(String input){
  List<String> words = input.split(" ");
  List<String> letters = [];
  for (String w in words){
    var c = w.substring(0,1);
    letters.add(c);
  }
  letters = letters.map((e) => e.toUpperCase()).toList();
  String out ='';
  for (String l in letters){
    out = out + l;
  }
  return out;
}