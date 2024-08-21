import 'package:wordle/constants/types.dart';
import 'package:wordle/constants/words.dart';

class GameLogic {
  late String word;
  late Map<String, TileStatus> keyStatus;
  late List<List<String>> tileLetter;
  late List<List<TileStatus>> tileStatus;
  int tried = 0;
  bool hasWon = false;
  String curr = '';

  GameLogic() {
    word = 'HELLO';
    keyStatus = {};
    tileStatus = List.generate(6, (int n) {
      return List.generate(word.length, (int x) {
        return TileStatus.unused;
      });
    });
    tileLetter = List.generate(6, (int n) {
      return List.generate(word.length, (int x) {
        return " ";
      });
    });
  }

  void resetGame(String newWord) {
    word = newWord.toUpperCase();
    hasWon = false;
    tried = 0;
    curr = "";
    tileStatus = List.generate(6, (int n) {
      return List.generate(word.length, (int x) {
        return TileStatus.unused;
      });
    });
    tileLetter = List.generate(6, (int n) {
      return List.generate(word.length, (int x) {
        return " ";
      });
    });
    keyStatus = {
      'A': TileStatus.unused,
      'B': TileStatus.unused,
      'C': TileStatus.unused,
      'D': TileStatus.unused,
      'E': TileStatus.unused,
      'F': TileStatus.unused,
      'G': TileStatus.unused,
      'H': TileStatus.unused,
      'I': TileStatus.unused,
      'J': TileStatus.unused,
      'K': TileStatus.unused,
      'L': TileStatus.unused,
      'M': TileStatus.unused,
      'N': TileStatus.unused,
      'O': TileStatus.unused,
      'P': TileStatus.unused,
      'Q': TileStatus.unused,
      'R': TileStatus.unused,
      'S': TileStatus.unused,
      'T': TileStatus.unused,
      'U': TileStatus.unused,
      'V': TileStatus.unused,
      'W': TileStatus.unused,
      'X': TileStatus.unused,
      'Y': TileStatus.unused,
      'Z': TileStatus.unused,
    };
  }

  void updateWord(String s) {
    if (hasWon) return;
    if (s == 'back') {
      if (curr.isNotEmpty) {
        curr = curr.substring(0, curr.length - 1);
        for (int i = 0; i < word.length; i++) {
          tileLetter[tried][i] = curr.length <= i ? '' : curr[i];
        }
      }
    } else if (curr.length == word.length) {
    } else {
      curr = curr + s;
      for (int i = 0; i < word.length; i++) {
        tileLetter[tried][i] = curr.length <= i ? ' ' : curr[i];
      }
    }
  }

  bool guess() {
    if (curr.length < word.length) {
      return true;
    }
    if (!Words().isValid(curr)) {
      return false;
    }
    if (curr == word) {
      hasWon = true;
      for (int i = 0; i < curr.length; i++) {
        tileStatus[tried][i] = TileStatus.right;
        keyStatus[curr[i]] = TileStatus.right;
      }
    } else {
      String s = word;
      for (int i = 0; i < curr.length; i++) {
        if (word.contains(curr[i])) {
          if (word[i] == curr[i]) {
            tileStatus[tried][i] = TileStatus.right;
            keyStatus[curr[i]] = TileStatus.right;
            s = s.replaceFirst(curr[i], " ");
          }
        } else {
          tileStatus[tried][i] = TileStatus.wrong;
          keyStatus[curr[i]] = TileStatus.wrong;
        }
      }
      for (int i = 0; i < curr.length; i++) {
        if (tileStatus[tried][i] == TileStatus.unused) {
          if (s.contains(curr[i])) {
            if (keyStatus[curr[i]] != TileStatus.right) {
              keyStatus[curr[i]] = TileStatus.misused;
            }
            tileStatus[tried][i] = TileStatus.misused;
            s = s.replaceFirst(curr[i], " ");
          } else {
            tileStatus[tried][i] = TileStatus.wrong;
          }
        }
      }
      tried++;
      curr = "";
    }
    return true;
  }
}
