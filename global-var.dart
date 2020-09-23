import 'dart:io';

List<String> products = [];

main () {
  bool condition = true;
  while(condition) {
    print("=== What do you want to do? ========");
    print("=== 0 - print list -> print ========");
    print("=== 1 - delete element -> delete ===");
    print("=== 2 - exit program -> exit =======");

    String text = stdin.readLineSync();

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
  print("============================");
  if (products.length == 0) {
    print('EMPTY LIST');
  } else {
    for(var product in products){
      print("PRODUCT ${products.indexOf(product)} $product");
    }
  }
  print("============================");
}

void deleteElement () {
  print("Which product you want to remove? Press index to remove.");
  printList();
  int productIndex = int.parse(stdin.readLineSync());
  String product = products[productIndex];
  products.removeAt(productIndex);
  print("Product $product removed");
}