import 'dart:io';

void humanStage () {

  print('Write your age.');
  var input = stdin.readLineSync();
  var age = int.parse(input);

  if(age >= 50) {
    print('best age!');
  } else if (age >= 18) {
    print('adult!');
  } else if (age >= 12) {
    print('Suck');
  } else {
    print('child');
  }
}

