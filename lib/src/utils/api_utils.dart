import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiUtils {
  static const String _baseUri = 'http://34.124.165.248/';

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final url = Uri.parse(_baseUri + endpoint);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  static Future<Map<String, dynamic>> post(String endpoint, dynamic body) async {
    final url = Uri.parse(_baseUri + endpoint);
    final response = await http.post(url, body: jsonEncode(body));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to post data');
    }
  }
}
