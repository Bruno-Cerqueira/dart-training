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

  bool trueValue = true;
  bool falseValue = false;

  // Lists

  List<String> listElements = ['a', 'b'];
  const listElements2 = ['a', 'b'];
  // listElements2.addAll(['1']); -> Error inmutable list
  
  print(listElements);
  print(listElements2);
  // listElements.addAll([2, 3]); ==> Error only type string 
  
  listElements.addAll(['2', '1']);
  listElements[2] = '3';
  print(listElements);

  // Sets

  Set setElements = { 'a', 'b' };
  var setElements2 = new Set();
  setElements2.addAll({'c'});
  print(setElements);
  print(setElements2);

  Set constSetElements = const { 'a', 'b' };
  // constSetElements.add('c'); -> Error: Cannot change unmodifiable set
  print(constSetElements);

  // Maps -> Keys strings or ints.

  var mapElement = new Map();
  mapElement[0] = 0;
  mapElement[1] = 1;
  print(mapElement);

  Map mapElement2 = {
    'one': 1,
    'two': 2,
  };

  print(mapElement2);

  // Runes

  var car = '\u{1F697}';
  print(car);

  Runes icons = new Runes('\u{1F697} \u{1F695}');
  print(String.fromCharCodes(icons));
}