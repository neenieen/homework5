// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';

import 'package:homework3/game.dart';


void main() {
  const maxRandom = 100;
  var game = Game();
  var isCorrect = false;
  var playAgain = false;

  do{
    print('╔════════════════════════════════════════');
    print('║            GUESS THE NUMBER            ');
    print('╟────────────────────────────────────────');

    do {
      stdout.write('║ Guess the number between 1 and $maxRandom: ');
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess == null) {
        continue;
      }

      var result = game.doGuess(guess);
      if (result == 1) {
        print('║ ➜ $guess is TOO HIGH! ▲');
        print('╟────────────────────────────────────────');
      } else if (result == -1) {
        print('║ ➜ $guess is TOO LOW! ▼');
        print('╟────────────────────────────────────────');
      } else {
        var guessCount = game.contGuess();
        print('║ ➜ $guess is CORRECT ❤, total guesses: $guessCount');
        print('╟────────────────────────────────────────');
        isCorrect = true;
      }
      game.contGuess();
    } while (!isCorrect);
    print('║                 THE END                ');
    print('╚════════════════════════════════════════');

    stdout.write('Play again? Y/N : ');
    var play = stdin.readLineSync();
    if(play == 'N'||play == 'n'){
      playAgain=false;
    }else if(play == 'Y'||play == 'y'){
      playAgain=true;
    }else{
        continue;
    }
  }while(playAgain==true);
}