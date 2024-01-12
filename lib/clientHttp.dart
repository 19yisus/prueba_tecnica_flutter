import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore: camel_case_types
class clientHttp extends http.BaseClient {
  Future<http.Response> makePostRequest(
      String url, Map<String, String> body) async {
    http.Response response = await http.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: json.encode(body));

    return response;
  }

  Future<http.Response> VerifyAuth(String tokenString) async {
    String url = "http://adempiere.erpcya.com:1174/api/security/menu";

    http.Response response = await http.get(Uri.parse(url), headers: {
      "Content-Type": "application/json",
      "Authorization": "Bearer $tokenString"
    });

    return response;
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    // TODO: implement send
    throw UnimplementedError();
  }
}
