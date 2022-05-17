import 'dart:io';

String english_To_Morse(String user_input){
  var alphabetToMorse = {
    'a' : '.-',
    'b' : '-...',
    'c' : '-.-.',
    'd' : '-..',
    'e' : '.',
    'f' : '..-.',
    'g' : '--.',
    'h' : '....',
    'i' : '..',
    'j' : '.---',
    'k' : '-.-',
    'l' : '.-..',
    'm' : '--',
    'n' : '-.',
    'o' : '---',
    'p' : '.--.',
    'q' : '--.-',
    'r' : '.-.',
    's' : '...',
    't' : '-',
    'u' : '..-',
    'v' : '...-',
    'w' : '.--',
    'x' : '-..-',
    'y' : '-.--',
    'z' : '--..',
    ' ' : ' ',
  };

  var strarray = user_input.split('');
  var morse_code = [];
  for (var i in strarray) {
    morse_code.add(alphabetToMorse[i]);
  }

  return morse_code.join();
}

String morse_to_English(String user_input){
  var morseToEnglish = {
    '.-' : 'a',
    '-...' : 'b',
    '-.-.' : 'c',
    '-..' : 'd',
    '.' : 'e',
    '..-.' : 'f',
    '--.' : 'g',
    '....' : 'h',
    '..' : 'i',
    '.---' : 'j',
    '-.-' : 'k',
    '.-..' : 'l',
    '--' : 'm',
    '-.' : 'n',
    '---' : 'o',
    '.--.' : 'p',
    '--.-' : 'q',
    '.-.' : 'r',
    '...' : 's',
    '-' : 't',
    '..-' : 'u',
    '...-' : 'v',
    '.--' : 'w',
    '-..-' : 'x',
    '-.--' : 'y',
    '--..' : 'z',
    ' ' : ' ',
  };

  var strarray = user_input.split('');
  var morse_code = [];
  for (var i in strarray) {
    morse_code.add(morseToEnglish[i]);
  }

  print(morse_code.join());

  return morse_code.join();
}

void main() {
  print('Enter your word/phrase');

  var user_input = stdin.readLineSync();

  morse_to_English(user_input!);

 // english_To_Morse(user_input!);
}


