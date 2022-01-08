import 'dart:io';
import 'game.dart';

void main() {
  while (true) {
    playGame();
    String? input;
    do {
      stdout.write('Play again? (Y/N): ');
      input = stdin.readLineSync();
    } while (input!.toLowerCase() != 'y' && input.toLowerCase() != 'n');

    if (input.toLowerCase() == 'n') {
      print('\n\nYou\'ve played ${Game.guessCountList.length} games');
      for (var i = 0; i < Game.guessCountList.length; i++) {
        print('🚀 Game #${i + 1}: ${Game.guessCountList[i]} guesses');
      }
      break;
    }

  }

// end of program
}

void playGame() {
  var isCorrect = false;
  stdout.write('Enter a maximum number to random : ');
  var input = stdin.readLineSync();
  var numMax = int.tryParse(input!);
  if (numMax == null) {
    numMax = 100;
  }
  var game = Game(numMax);

  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');

  do {
    stdout.write('║ Guess the number between 1 and ${game.maxRandom}: ');
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
    } else if (result == 0) {
      print('║ ➜ $guess is CORRECT ❤, total guesses: ${game.guessCount}');
      print('╟────────────────────────────────────────');
      isCorrect = true;
      //Game.guessCountList.add(game.guessCount);
      game.addContList();
    }
  } while (!isCorrect);

  print('║                 THE END                ');
  print('╚════════════════════════════════════════');
}
