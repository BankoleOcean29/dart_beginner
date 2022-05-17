import 'dart:io';

Future longRunningOperation() async {
  for (var i = 0; i < 5; i++) {
    sleep(Duration(seconds: 3));
    print ('index: $i');
  }
}

void main() async {
  print('Start of a long running operation');

  await longRunningOperation();

  print('continuing main body');

}