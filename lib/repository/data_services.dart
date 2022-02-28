import 'package:symphonia/model/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const url =
    "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false#";

class DataServices {
  Future<List<Model>> fetchData() async {
    http.Response result = await http.get(Uri.parse(url));
    if (result.statusCode == 200) {
      var data = jsonDecode(result.body) as List;
      final posts = data.map((jsonPost) => Model.fromJson(jsonPost)).toList();
      // List<Articles> articles = Articles.fromJson(data) as List<Articles>;
      return posts;
    } else {
      throw Exception();
    }
  }
}
