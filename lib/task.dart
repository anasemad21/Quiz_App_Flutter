import 'dart:io';
void main() {
  //var list_one = new List.generate(3, (_) => new List(5));
  var list_one = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29];
  var list_two = [2, 3, 6, 7, 10, 11, 14, 15, 18, 19, 22, 23, 26, 27, 30];
  var list_three = [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 288, 29, 30];
  var list_four = [8, 9, 10, 11, 12, 13, 14, 15, 24, 25, 26, 27, 28, 29, 30];
  var list_five = [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30];
  var res=0;
  print(list_one);
  print(list_two);
  print(list_three);
  print(list_four);
  print(list_five);
  print("chose a number and keep it in Ur head\n");
    print(" Ur number in the set 1 ?\t Yes or No");
   String user = stdin.readLineSync();
  if(user=="Yes"||user=="yes")
  {
   res+=list_one[0];
  }
    print(" Ur number in the set 2 ?\t Yes or No");
    user = stdin.readLineSync();
   if(user=="Yes"||user=="yes")
  {
    res+=list_two[0];
  }
    print(" Ur number in the set 3 ?\t Yes or No");
    user = stdin.readLineSync();
   if(user=="Yes"||user=="yes")
  {
   res+=list_three[0];
  }
    print(" Ur number in the set 4 ?\t Yes or No");
    user = stdin.readLineSync();
   if(user=="Yes"||user=="yes")
  {
   res+=list_four[0];
  }
    print(" Ur number in the set 5 ?\t Yes or No");
    user = stdin.readLineSync();
   if(user=="Yes"||user=="yes")
  {
    res+=list_five[0];
  }
  print("The number U chosen is $res");
}
