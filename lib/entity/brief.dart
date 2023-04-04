import 'dart:ffi';

class Brief {
  String titre = "";
  String contexte = "";
  String deadline = "";

  Brief({this.titre = "", this.contexte = "", this.deadline = ""});

  Brief.fromJson(Map<String, dynamic> json) {
    titre = json['titre'];
    contexte = json['contexte'];
    deadline = json['deadline'];
  }

  factory Brief.fromMap(Map briefMap) {
    return Brief(
        // id: briefMap['id'],
        titre: briefMap['titre'],
        contexte: briefMap['contexte'],
        deadline: briefMap['deadline']);
  }
}
