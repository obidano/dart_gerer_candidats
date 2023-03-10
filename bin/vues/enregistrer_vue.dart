import '../controllers/candidats_controller.dart';
import '../models/candidat_model.dart';
import '../utils/saisie_user.dart';
import '../utils/service.dart';

void enregistrer_vue() {
  var candidatCtrl = getIt<CandidatController>();
  print("Formulaire d'enregistrement");
  print("-" * 20);

  String nom = saisieUser("Votre identité complete: ");
  String genre = saisieUser("Genre: ");
  String universite = saisieUser("Université: ");
  int compteur = candidatCtrl.listCandidats.length + 1;
  CandidatModel candidat = CandidatModel(
      id: compteur, nom: nom, genre: genre,
      universite: universite);
  bool status=candidatCtrl.creer_candidat(candidat);
  String msg=status? "Creation reussie": "Echec creation";
  print(msg);
}

void main(){
  getIt.registerSingleton(CandidatController());
  enregistrer_vue();
}