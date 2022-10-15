// To parse this JSON data, do
//
//     final matematicon = matematiconFromJson(jsonString);

import 'dart:convert';

List<Matematicon> matematiconFromJson(String str) => List<Matematicon>.from(
    json.decode(str).map((x) => Matematicon.fromJson(x)));

String matematiconToJson(List<Matematicon> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Matematicon {
  Matematicon({
    required this.codclasa,
    required this.codmaterie,
    this.codserie,
    this.denumireserie,
  });

  String codclasa;
  String codmaterie;
  String? codserie;
  String? denumireserie;

  factory Matematicon.fromJson(Map<String, dynamic> json) => Matematicon(
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
