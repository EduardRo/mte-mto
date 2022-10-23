// To parse this JSON data, do
//
//     final Test = TestFromJson(jsonString);

import 'dart:convert';

List<Test> testFromJson(String str) =>
    List<Test>.from(json.decode(str).map((x) => Test.fromJson(x)));

String testToJson(List<Test> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Test {
  Test({
    required this.idtest,
    required this.codclasa,
    required this.codmaterie,
    required this.codserie,
    required this.denumireserie,
    required this.enunt,
    required this.var1,
    required this.var2,
    required this.var3,
    required this.var4,
    required this.raspuns,
    required this.path,
  });

  String idtest;
  String codclasa;
  String codmaterie;
  String codserie;
  String denumireserie;
  String enunt;
  String var1;
  String var2;
  String var3;
  String var4;
  String raspuns;
  String path;

  factory Test.fromJson(Map<String, dynamic> json) => Test(
        idtest: json["idtest"],
        codclasa: json["codclasa"],
        codmaterie: json["codmaterie"],
        codserie: json["codserie"],
        denumireserie: json["denumireserie"],
        enunt: json["enunt"],
        var1: json["var1"],
        var2: json["var2"],
        var3: json["var3"],
        var4: json["var4"],
        raspuns: json["raspuns"],
        path: json["path"],
      );

  Map<String, dynamic> toJson() => {
        "idtest": idtest,
        "codclasa": codclasa,
        "codmaterie": codmaterie,
        "codserie": codserie,
        "denumireserie": denumireserie,
        "enunt": enunt,
        "var1": var1,
        "var2": var2,
        "var3": var3,
        "var4": var4,
        "raspuns": raspuns,
        "path": path,
      };
}
