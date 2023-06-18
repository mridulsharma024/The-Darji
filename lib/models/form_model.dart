class FormModel {
  String? uid;
  String? productName;
  String? price;
  String? profilepic;
  String? description;
  String? category;
  String? location;

  FormModel(
      {this.uid,
      this.productName,
      this.price,
      this.profilepic,
      this.description,
      this.category,
      this.location});

  FormModel.fromMap(Map<String, dynamic> map) {
    uid = map["uid"];
    productName = map["productName"];
    price = map["price"];
    profilepic = map["profilepic"];
    description = map["description"];
    category = map["category"];
    location = map["location"];
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "productName": productName,
      "price": price,
      "profilepic": profilepic,
      "description": description,
      "category": category,
      "location": location,
    };
  }
}
