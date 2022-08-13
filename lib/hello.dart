import 'dart:io';

import 'game.dart';

void main(){
  var game = Game();
  int result = 0;
  do{
    stdout.write('Please guess the number between 1 to 100 : ');
    var input = stdin.readLineSync();  //รับข้อมูลที่เราพิม
    var guess = int.tryParse(input!);  //แปลงstringเป็นint

    if(guess == null){
      print('Please enter number only');
      continue;
    }

    result = game.doGuess(guess);

  }while(result!=1);
}