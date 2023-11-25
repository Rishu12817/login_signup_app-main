// To parse this JSON data, do
//
//     final xyz = xyzFromJson(jsonString);

import 'dart:convert';

List<Xyz> xyzFromJson(String str) => List<Xyz>.from(json.decode(str).map((x) => Xyz.fromJson(x)));

String xyzToJson(List<Xyz> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Xyz {
    int id;
    String name;
    String country;
    String logo;
    String slogan;
    String headQuaters;
    String website;
    String established;

    Xyz({
        required this.id,
        required this.name,
        required this.country,
        required this.logo,
        required this.slogan,
        required this.headQuaters,
        required this.website,
        required this.established,
    });

    factory Xyz.fromJson(Map<String, dynamic> json) => Xyz(
        id: json["id"],
        name: json["name"],
        country: json["country"],
        logo: json["logo"],
        slogan: json["slogan"],
        headQuaters: json["head_quaters"],
        website: json["website"],
        established: json["established"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "country": country,
        "logo": logo,
        "slogan": slogan,
        "head_quaters": headQuaters,
        "website": website,
        "established": established,
    };
}
