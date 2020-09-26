import 'dart:io';

List<String> products = [];

void shopping_cart () {
  var condition = true;
  while(condition) {
    print('=== What do you want to do? ========');
    print('=== 0 - print list -> print ========');
    print('=== 1 - delete element -> delete ===');
    print('=== 2 - exit program -> exit =======');

    var text = stdin.readLineSync();

    switch (text) {
      case 'print':
        printList();
        break;
      case 'delete':
        deleteElement();
        break;
      case 'exit':
        condition = false;
        break;
      default:
        products.add(text);
    }
  }


}

void printList () {
  print('============================');
  if (products.isEmpty) {
    print('EMPTY LIST');
  } else {
    for(var product in products){
      print('PRODUCT ${products.indexOf(product)} $product');
    }
  }
  print('============================');
}

void deleteElement () {
  print('Which product you want to remove? Press index to remove.');
  printList();
  var productIndex = int.parse(stdin.readLineSync());
  var product = products[productIndex];
  products.removeAt(productIndex);
  print('Product $product removed');
}