import '../models/candidat_model.dart';

class CandidatController {
  List<CandidatModel> listCandidats = [];

  bool creer_candidat(CandidatModel data){
    listCandidats.add(data);
    return true;
  }

  bool modifier_candidat(CandidatModel data){
    return true;
  }

  bool desactiver(CandidatModel data){
    return true;
  }


}
