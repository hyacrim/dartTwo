
import 'package:desire_exo1/desire_exo1.dart';

void main() {
  while (true) {
    nomApp();

  String  choixx = choix();

    switch (choixx) {
      case '1':
        print('\n');
        addName();
        break;
      case '2':
        print('\n');
        allname();
        break;
      case '3':
        print('\n');
        allname();
        deleteName();
        break;
      case '4':
        print('\n');
        allname();
        setName();
        break;
      case 'a':
        print('\n');
        left();
      default:
        print('\n');
        print('ERREUR');
    }
  }
}
