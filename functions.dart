main() {
  // Basics
  bool isPar(int number) {
    return number % 2 == 0;
  }

  print('2 is par ${isPar(2)}');

  bool isImpar(int number) {
    return number % 2 != 0;
  }

  print('3 is impar ${isImpar(3)}');

  // Parameters

  // named arguments
  showName({String name, String surname}) {
    return print(name + surname);
  }

 // positional argument, indicate optional arguments with List []
 // default value param = value
  showFullName(String name, [String surname = 'Simpson']) {
    return print('$name $surname');
  }

  showFullName('John', 'Black');
  showFullName('John');
  showName(name: 'John', surname: 'White');

  // function as params

  ['a', 'b'].forEach((element) => showFullName(element));
  ['a', 'b'].forEach(showFullName);

  // function on variable

  var message = (message) => message.toUpperCase();
  print(message('anton'));

  // anonymous function

  List<String> house = ['window', 'door', 'wall', 'roof'];
  
  house.forEach((e) => print(e)); // param inside forEach, anonymous func;
}
