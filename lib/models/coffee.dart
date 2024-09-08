class Coffee {
  String name;
  String type;
  double price;
  String image;

  Coffee({
    required this.name,
    required this.type,
    required this.price,
    required this.image,
  });

  factory Coffee.fromJson(Map<String, dynamic> json) {
    return Coffee(
      name: json['name'],
      type: json['type'],
      price: json['price'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
    'name':name,
    'type':type,
    'price':price,
    'image':image,
    };
  }
}
