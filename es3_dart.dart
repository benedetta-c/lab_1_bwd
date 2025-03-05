String swap_cases(String s) {
  List<int> char_codes_in = List.from(s.codeUnits); // Create a modifiable copy
  for(int i = 0; i < char_codes_in.length; i++) {
    if(char_codes_in[i] >= 65 && char_codes_in[i] <= 90) {
      char_codes_in[i] += 32;
    } else if(char_codes_in[i] >= 97 && char_codes_in[i] <= 122) {
      char_codes_in[i] -= 32;
    }
  }
  String swapped = String.fromCharCodes(char_codes_in);
  return swapped; 
}

void main() {
  print(swap_cases('Hello World'));
  print(swap_cases('Hello World!'));
  print(swap_cases('Hello World1234'));
  
}