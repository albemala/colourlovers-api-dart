import 'package:chopper/chopper.dart';

Response allItems<T>(Response response, T Function(Map<String, dynamic> json) callback) {
  final List<dynamic> jsonBody = const JsonConverter().convertResponse(response).body;
  return response.copyWith(
    body: jsonBody.map((json) => callback(json)).toList(),
  );
}

Response firstItem<T>(Response response, T Function(Map<String, dynamic> json) callback) {
  final List<dynamic> jsonBody = const JsonConverter().convertResponse(response).body;
  return response.copyWith(
    body: callback(jsonBody.first),
  );
}
