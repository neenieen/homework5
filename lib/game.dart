import 'dart:math';

class Game {
  int? maxRandom;
  int? _answer;
  int _guessCount = 0;
  static final List<int> guessCountList = [];

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
  void addContList(){
    guessCountList.add(_guessCount);
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