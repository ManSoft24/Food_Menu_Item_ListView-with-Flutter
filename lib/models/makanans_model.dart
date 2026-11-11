// To parse this JSON data, do
//
//     final makanansModel = makanansModelFromJson(jsonString);

import 'dart:convert';

MakanansModel makanansModelFromJson(String str) =>
    MakanansModel.fromJson(json.decode(str));

String makanansModelToJson(MakanansModel data) => json.encode(data.toJson());

class MakanansModel {
  final List<Datum> data;

  MakanansModel({required this.data});

  factory MakanansModel.fromJson(Map<String, dynamic> json) => MakanansModel(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  final String name;
  final String description;
  final String category;
  final double price;
  final String currency;
  final String sku;
  final String ean13;
  final double rating;
  final bool inStock;
  final String imageUrl;

  Datum({
    required this.name,
    required this.description,
    required this.category,
    required this.price,
    required this.currency,
    required this.sku,
    required this.ean13,
    required this.rating,
    required this.inStock,
    required this.imageUrl,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    name: json["name"],
    description: json["description"],
    category: json["category"],
    price: json["price"]?.toDouble(),
    currency: json["currency"],
    sku: json["sku"],
    ean13: json["ean13"],
    rating: json["rating"]?.toDouble(),
    inStock: json["inStock"],
    imageUrl: json["imageUrl"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "description": description,
    "category": category,
    "price": price,
    "currency": currency,
    "sku": sku,
    "ean13": ean13,
    "rating": rating,
    "inStock": inStock,
    "imageUrl": imageUrl,
  };
}
