import 'dart:math';

void  main()
{
  int n = 10;
  List<int> list = [];
  Random random = new Random();
  for (int i = 0; i < n; i++)
  {
    int randomNumber = random.nextInt(10);
    list.add(randomNumber);
  }
  print(list);
}