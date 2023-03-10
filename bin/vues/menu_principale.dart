import '../utils/navigation.dart';
import 'enregistrer_vue.dart';

void menu_principale(){
    print("Menu principale");
    print("="*20);

    Map menu={
      "1": {"titre":"Créer", "action": ()=> enregistrer_vue()},
      "2": {"titre":"Lister", "action": ()=> enregistrer_vue()},
      "0": {"titre":"Quitter", "action": ()=> print('')},
    };

    navigation(menu);
}

void main(){
  menu_principale();
}
