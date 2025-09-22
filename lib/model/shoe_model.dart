class ShoeItemData {
  String? image1;
  String? image2;
  String? image3;
  int? price;
  String? name;
  String? status;
  String? details;

  ShoeItemData(
      {this.image1,
        this.image2,
        this.image3,
        this.price,
        this.name,
        this.status,
        this.details});

  ShoeItemData.fromJson(Map<String, dynamic> json) {
    image1 = json['image1'];
    image2 = json['image2'];
    image3 = json['image3'];
    price = json['price'];
    name = json['name'];
    status = json['status'];
    details = json['details'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image1'] = this.image1;
    data['image2'] = this.image2;
    data['image3'] = this.image3;
    data['price'] = this.price;
    data['name'] = this.name;
    data['status'] = this.status;
    data['details'] = this.details;
    return data;
  }
}
