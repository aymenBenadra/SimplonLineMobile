class ApprenantModel {
  String? id;
  String? name;
  String? email;
  String? phone;
  String? promo;
  String? image;

  ApprenantModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.promo,
    this.image,
  });

  factory ApprenantModel.fromJson(Map<String, dynamic> json) => ApprenantModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        promo: json["promo"],
        image: json["image"],
      );
}
