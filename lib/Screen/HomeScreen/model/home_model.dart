import 'dart:convert';

List<Home> homeFromJson(String str) =>
    List<Home>.from(json.decode(str).map((x) => Home.fromJson(x)));

String homeToJson(List<Home> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Home {
  int? id;
  String? name;
  String? nameTransliterated;
  String? nameTranslated;
  int? versesCount;
  int? chapterNumber;
  String? nameMeaning;
  String? chapterSummary;

  Home({
    this.id,
    this.name,
    this.nameTransliterated,
    this.nameTranslated,
    this.versesCount,
    this.chapterNumber,
    this.nameMeaning,
    this.chapterSummary,
  });

  factory Home.fromJson(Map<String, dynamic> json) => Home(
        id: json["id"],
        name: json["name"],
        nameTransliterated: json["name_transliterated"],
        nameTranslated: json["name_translated"],
        versesCount: json["verses_count"],
        chapterNumber: json["chapter_number"],
        nameMeaning: json["name_meaning"],
        chapterSummary: json["chapter_summary"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "name_transliterated": nameTransliterated,
        "name_translated": nameTranslated,
        "verses_count": versesCount,
        "chapter_number": chapterNumber,
        "name_meaning": nameMeaning,
        "chapter_summary": chapterSummary,
      };
}
