main() {
  // Conditionals
  var isIt = 'true';

  if(isIt == true) {
    print('It is true');
  } else if (isIt == false) {
    print('It is false');
  } else {
    print('It is not');
  }

  // For loop
  var animals = ['lion', 'duck', 'dog'];

  for(var i = 0; i < animals.length; i++) {
    print(animals[i]);
  }

  for(var animal in animals) {
    print(animal);
  }

  animals.forEach((animal) { print(animal); });

  Set famousGuys = { 'Messi', 'John Travolta' };

  for(var famous in famousGuys) {
    print(famous);
  }
  
  // while, do-while loop
  int count = 0;

  while(count == 0) {
    print(animals[count]);
    count++;
  }

  int count2 = 0;
  
  do {
    print(animals[count2]);
    count2++;
  } while (count2 <= 1);

  // Switch case
  int val = 3;

  switch (val) {
    case  1:
      print(1);
      break;
    case 2:
      print(2);
      break;
    default:
      print('nothing');
  }



}