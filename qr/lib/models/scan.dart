import 'dart:convert';

class Scan {
  Scan({
    required this.id,
    this.type,
    required this.value,
  });

  int id;
  String? type;
  String value;

  setType(String va) {
    value.contains("http") || value.contains("https")
        ? type = "http"
        : type = "geo";
  }

  factory Scan.fromJson(String str) => Scan.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Scan.fromMap(Map<String, dynamic> json) => Scan(
        id: json["id"],
        type: json["type"],
        value: json["value"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "type": type,
        "value": value,
      };
}
