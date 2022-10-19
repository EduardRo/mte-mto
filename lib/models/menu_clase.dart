import 'dart:convert';

List<MenuClase> menuClaseFromJson(String str) =>
    List<MenuClase>.from(json.decode(str).map((x) => MenuClase.fromJson(x)));

String menuClaseToJson(List<MenuClase> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MenuClase {
  MenuClase({
    required this.codclasa,
  });

  String codclasa;

  factory MenuClase.fromJson(Map<String, dynamic> json) => MenuClase(
        codclasa: json["codclasa"],
      );

  Map<String, dynamic> toJson() => {
        "codclasa": codclasa,
      };
}
