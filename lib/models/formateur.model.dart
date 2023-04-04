class FormateurModel {
  String? id;
  String? name;
  String? email;
  String? phone;
  String? promo;
  String? image;

  FormateurModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.promo,
    this.image,
  });

  factory FormateurModel.fromJson(Map<String, dynamic> json) => FormateurModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        promo: json["promo"],
        image: json["image"],
      );
}
