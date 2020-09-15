main(){
	var text = "Ania";
	var number = 5;

	printInterpolation() {
		print('$text is a string');
	}

	printInterpolation();
	printValue(number);
}

printValue(int number) {
  print('The value is ' + number.toString());
}