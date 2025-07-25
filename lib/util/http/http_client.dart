import 'dart:convert';
import 'package:http/http.dart' as http;

class FreshPressHttpHelper {
  static const String _baseUrl =
      'https://your_api_base-url.com'; // Replace with your API base-Url

  // Helper method to make a GET request
  static Future<Map<String, dynamic>> get(String endPoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endPoint'));
    return _handleResponse(response);
  }

  // Helper method to make a POST request
  static Future<Map<String, dynamic>> post(
      String endPoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endPoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  // Helper method to make a PUT request
  static Future<Map<String, dynamic>> put(String endPoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endPoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  // Helper method to make a delete request
  static Future<Map<String, dynamic>> delete(String endPoint) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$endPoint'));
    return _handleResponse(response);
  }

  // // Helper method to make a GET request
  static Future<Map<String, dynamic>> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.body}');
    }
  }
}
