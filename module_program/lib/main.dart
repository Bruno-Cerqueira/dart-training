import 'src/human_stage.dart';
import 'src/print.dart';
import 'src/shopping.dart';
import 'src/imc.dart';

void main(List<String> arguments) {
  if(arguments?.isEmpty) {
    print('Nothing to execute, pass an argument [print, age, shopping, imc]');
  } else if(arguments?.first == 'print') {
    printExec();
  } else if(arguments?.first == 'age' ) {
    humanStage();
  } else if(arguments?.first == 'shopping' ) {
    shopping_cart();
  } else if(arguments?.first == 'imc' ) {
    calculateImc();
  } else {
    print('Program not found!');
  }
}