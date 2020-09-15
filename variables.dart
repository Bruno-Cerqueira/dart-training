main(){
  // Variables
  var text1; // return null
  text1 = 'text';
  var text2 = 'string';
  String text3 = 'string';

  print('$text1 $text2 $text3');

  dynamic changingVar; // Variable with type not defined.

  changingVar = 1;
  print('${changingVar.toString()}');
  changingVar = 'text1';
  print('$changingVar');

  // Final and const

  // Const make all values inside const, final inside data is mutable.

  const numbers = [1, 2];
  
  // num.add(3); -> Produce error.
  
  print(numbers.join());

  final numFinal = [1, 2];
  
  numFinal.add(3);
  
  print(numFinal.join());

  // Const only for data you know at runtime and final for execute

  final date = new DateTime.now();
  // const date1 = new DateTime.now(); -> error, cause operation on runtime.

  // Not mix final and const in operations.

  const data = 1;
  final operation1 = data + 1;
  //const operation2 = operation1 + 1; error -> Not final inside const operation.

  print(operation1);

  // Numbers

  var x = 1;
  int y = 2;
  double z = 2; // -> Apply decimals 2.0
  num e = -1.5; // -> Generic number - int and double

  final result = x + y;

  print(result);
  print(z);

  // Operations

  print(e.abs());
  print(e.floor());
  print(e.ceil());
  int one = int.parse('1');
  print(one);
  double onepoint = double.parse('1');
  print(onepoint);

  String charOne = one.toString();
  String charOnePoint = onepoint.toStringAsFixed(2);
  print(charOne);
  print(charOnePoint);

  // Strings

  var char1 = 'Hello';
  var char2 = "World";
  var char3 = 'Hello \'Thomas\'';
  print(char3);

  // Concat
  var sentence = "Hello"
    "World";
  print(sentence);

  String sentence2 = "$char1 $char2";
  String sentence3 = "" + char1 + char2;
  print(sentence3);
  
  // Booleans

  // Lists

  // Sets

  // Maps

  // Runes

}