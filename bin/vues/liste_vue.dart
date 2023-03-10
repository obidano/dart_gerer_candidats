import '../controllers/candidats_controller.dart';
import '../models/candidat_model.dart';
import '../utils/navigation.dart';
import '../utils/service.dart';
import 'detail_candidat_vue.dart';

void liste_vue(){
  var candidatCtrl = getIt<CandidatController>();
  List<CandidatModel> data= candidatCtrl.listCandidats;
  print("Liste Candidats (${data.length})");
  print("-" * 20);
  int i=1;
  Map menu={};
  for(var candidat in data){
    menu["$i"]= {
      "titre": candidat.nom,
      'action':()=> detail_candidat_vue(candidat)
    };
    i++;
  }
  menu["0"]={'titre': "Quitter", 'action': ()=> print('')};
  navigation(menu);

}

void main(){
  getIt.registerSingleton(CandidatController());
  var ctrl=getIt<CandidatController>();
  var fauxCandidat=CandidatModel(id: 20,
      nom:"Toto", genre: "F", universite: "UNPKC");
  ctrl.creer_candidat(fauxCandidat);
  liste_vue();
}