/* Write a function that given a string provided by the main function containing brackets [], 
braces {}, parentheses (), or any combination thereof that follows the math expression rules, 
returns a boolean that is true if any and all pairs are matched and nested correctly. 
Suppose that only one pair of parentheses can be present for each type. 
Then print the result in the main function. For example:
- This is ok: {this[is(o)]}k
- This is not ok: T{hi[(sis)not}ok]
- This is not ok: {{this[is(notok)]}} */

void main(List<String> args){
  String input = "{this[is(o)]}k";
  print(checkParanthesis(input));
}

bool checkParanthesis(String input){
  bool closeB = true;
  bool closeP = true;
  bool closeS = true;

  List<String> chars = input.split("");
  for (var c in chars){
    if (c == "("){
      closeP = false;
    }
    else if (c == ")"){
      closeP = true;
    }
    else if (c == "["){
      closeS = false;
    }
    else if (c == "]"){
      closeS = true;
    }
    else if (c == "{"){
      closeB = false;
    }
    else if (c == "}"){
      closeB = true;
    }
  }
  var out = closeS&&closeP&&closeB;
  return out;}
