import 'package:module_program/module_program.dart' as module_program;
import 'package:module_program/print.dart' as print_program;

void main(List<String> arguments) {
  arguments = arguments.isEmpty ? null : arguments;
  if(arguments?.first == 'print') {
    print_program.printExec();
  } else if(arguments?.first == 'calculate' ) {
    print('Calculate: ${module_program.calculate()}!');
  } else {
    print('Nothing executed.');
  }
}
