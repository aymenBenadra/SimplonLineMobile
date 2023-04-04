class BriefModel {
  String? id;
  String? titre;
  String? context;
  String? deadline;
  String? Creation;
  String? image;

  BriefModel({
    this.id,
    this.titre,
    this.context,
    this.deadline,
    this.Creation,
    this.image,
  });

  factory BriefModel.fromJson(Map<String, dynamic> json) => BriefModel(
        id: json["id"],
        titre: json["titre"],
        context: json["context"],
        deadline: json["deadline"],
        Creation: json["Creation"],
        image: json["image"],
      );
}
