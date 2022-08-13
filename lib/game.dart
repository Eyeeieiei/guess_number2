import 'dart:io';
import 'dart:math';

class Game {
  int answer = 0; //instance field,ฟิลของคลาส

  Game() {   //constructure
    var r = Random();
    answer = r.nextInt(100) + 1;
    print('คำตอบคือ $answer');
  }
  int doGuess (int num)
  {
    if (num > answer) {
      print('$num is too high');
      return 0;
    }
    else if (num < answer) {
      print('$num is too low');
      return 0;
    }
    else {
      print('$num is correct');
      print('Will you continue the game?');
      var x = stdin.readLineSync();
      if (x == 'yes') {
        return 0;
      }
      else if (x == 'no') {
        return 1;
      }
      else {
        return 0;
      }
    }
  }
}
