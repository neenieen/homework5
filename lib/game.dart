import 'dart:math';

class Game{
  static const maxRandom = 100;
  int? _answer;
  int cont = 0;

  Game(){
    var r = Random();
    _answer = r.nextInt(maxRandom)+1;
    cont = 0;
  }
  int doGuess(int num){
    if(num> _answer!){
      return 1;
    }else if(num < _answer!){
      return -1;
    }else{
      return 0;
    }
  }
  int? contGuess(){
    cont++;
    return cont;
  }

}