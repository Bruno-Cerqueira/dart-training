main() {
  Person p = new Person('Bruno', 'Cerqueira');

  p.name = 'Bruna';
  print('My name is ${p.name} ${p.surname}');
  print('My age is ${p.age}');
  print('Am I adult? - ${p.adult()}');
  p.age = 18;
  print('My age is ${p.age}');
  print('Am I adult? - ${p.adult()}');

  // Instance Person with other constructor
  Person p2 = new Person.withoutAge('Bruno', 'Cerqueira');

  print('My name is ${p2.name} ${p2.surname}');
  print('My age is ${p2.age}');

  ReducePerson p3 = new ReducePerson('Bruno', 'Cerqueira');

  print('My name is ${p3.name} ${p3.surname}');
  print('My age is ${p3.age}');
}

class Person {
  String name, surname;
  int age;

  Person(String name, String surname, [int age = 0]) {
    this.name = name;
    this.surname = surname;
    this.age = age;
  }

  // Other constructor
  Person.withoutAge(String name, String surname) {
    this.name = name;
    this.surname = surname;
    this.age = 0;
  }

  bool adult() {
    if(this.age >= 18) {
      return true;
    } else {
      return false;
    }
  }
}

class ReducePerson {
  String name, surname;
  int age;

  // Syntactic sugar
  ReducePerson(this.name, this.surname, [this.age]);
}