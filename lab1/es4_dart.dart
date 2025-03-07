String upper_case(String s,{bool up =false}) {
  if (!up) {
    return s;
  } else {  
    List<int> char_codes_in = List.from(s.codeUnits); // Create a modifiable copy
    for(int i = 0; i < char_codes_in.length; i++) {
      if(char_codes_in[i] >= 97 && char_codes_in[i] <= 122) {
        char_codes_in[i] -= 32; 
      }
    }
    String upped = String.fromCharCodes(char_codes_in);
    return upped; 
  }
}

void main(){
  String s = 'Hello World';
  print(upper_case(s));
  print(upper_case(s,up:true));
}

