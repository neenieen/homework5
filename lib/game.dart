import 'dart:math';

class Game {
  int? maxRandom;
  int? _answer;
  int _guessCount = 0;

  Game(int numMax) {
    if(numMax != null){
      this.maxRandom = numMax;
    }else{
      this.maxRandom = 100;
    }
    var r = Random();
    _answer = r.nextInt(numMax) + 1;
  }

  int get guessCount {
    return _guessCount;
  }

  int doGuess(int num) {
    _guessCount++;
    if (num > _answer!) {
      return 1;
    } else if (num < _answer!) {
      return -1;
    } else {
      return 0;
    }
  }
}