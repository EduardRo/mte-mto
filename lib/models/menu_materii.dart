// To parse this JSON data, do
//
//     final MenuMaterii = MenuMateriiFromJson(jsonString);

import 'dart:convert';

List<MenuMaterii> menuMateriiFromJson(String str) => List<MenuMaterii>.from(
    json.decode(str).map((x) => MenuMaterii.fromJson(x)));

String menuMateriiToJson(List<MenuMaterii> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MenuMaterii {
  MenuMaterii({
    required this.codclasa,
    required this.codmaterie,
    required this.codserie,
    required this.denumireserie,
  });

  String codclasa;
  String codmaterie;
  String codserie;
  String denumireserie;

  factory MenuMaterii.fromJson(Map<String, dynamic> json) => MenuMaterii(
        codclasa: json["codclasa"],
        codmaterie: json["codmaterie"],
        codserie: json["codserie"],
        denumireserie: json["denumireserie"],
      );

  Map<String, dynamic> toJson() => {
        "codclasa": codclasa,
        "codmaterie": codmaterie,
        "codserie": codserie,
        "denumireserie": denumireserie,
      };
}
