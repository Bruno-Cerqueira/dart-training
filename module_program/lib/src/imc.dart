import 'dart:io';

void calculateImc (){
  print('Add your name');
  var nameInput = stdin.readLineSync();
  
  print('Add your weight');
  var weightInput = stdin.readLineSync();
  var weight = int.parse(weightInput);
  
  print('Add your height');
  var heightInput = stdin.readLineSync();
  var height = double.parse(heightInput);

  var person1 = Person(nameInput, height, weight);

  print(person1.height);
  person1.imc();
}

class Person {
  String name;
  int weight;
  double height;
  Person(this.name, [this.height = 0, this.weight = 0]);

  void imc() {
    if(height != 0 && weight != 0) {
    var imcData = weight / (height * height);
    return print('The imc of ${name} is $imcData');
    } else {
      return print('You have to add height and weight.');
    }
  }
}