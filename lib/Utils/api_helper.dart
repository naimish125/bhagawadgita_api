import 'dart:convert';

import 'package:bhagawadgita_api/Screen/HomeScreen/model/home_model.dart';
import 'package:http/http.dart' as http;

import '../Screen/SlockScreen/model/slock_model.dart';

class ApiHelper {
  static final helper = ApiHelper._();

  ApiHelper._();

  Future<List<Home>> getdata() async {
    String link = "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/?limit=18";
    var responce = await http.get(Uri.parse(link), headers: {
      "X-RapidAPI-Key": "86de2a31ffmsh31df2045539a7c0p14e2a2jsn3a8b3881d41d",
      "X-RapidAPI-Host": "bhagavad-gita3.p.rapidapi.com"
    });
    List json = jsonDecode(responce.body);
    return json
        .map(
          (e) => Home.fromJson(e),
        )
        .toList();
  }

  Future<List<SlockModel>> slock(int chapterName) async {
    String link =
        "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/$chapterName/verses/";
    var responce = await http.get(Uri.parse(link), headers: {
      "X-RapidAPI-Key": "86de2a31ffmsh31df2045539a7c0p14e2a2jsn3a8b3881d41d",
      "X-RapidAPI-Host": "bhagavad-gita3.p.rapidapi.com"
    });
    List json = jsonDecode(responce.body);

    return json.map((e) => SlockModel.fromJson(e)).toList();
  }
}
