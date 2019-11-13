import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http_request_json/Model/album.dart';

class Service {
  
  static final String albumUrl = "https://jsonplaceholder.typicode.com/photos";
  static Future<List<Album>> getAlbums() async {
    try {
      final response = await http.get(albumUrl);

      if (response.statusCode == 200) {
        List<Album> albumList = parseAlbums(response.body);
        return albumList;
      } else {
        throw Exception('Error');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List<Album> parseAlbums(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Album>((json) => Album.fromJson(json)).toList();
  }
}
