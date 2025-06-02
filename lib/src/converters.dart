import 'dart:convert';

import 'package:chopper/chopper.dart';

Response<List<T>> convertResponseList<T>(
  Response<dynamic> response,
  T Function(Map<String, dynamic> json) callback,
) {
  final jsonList = jsonDecode(response.bodyString) as List<dynamic>;
  final items =
      jsonList.map((json) {
        return callback(json as Map<String, dynamic>);
      }).toList();
  return response.copyWith(body: items);
}

Response<T> convertResponseFirstObject<T>(
  Response<dynamic> response,
  T Function(Map<String, dynamic> json) callback,
) {
  final jsonList = jsonDecode(response.bodyString) as List<dynamic>;
  final item = callback(jsonList.first as Map<String, dynamic>);
  return response.copyWith(body: item);
}

Response<T> convertResponseObject<T>(
  Response<dynamic> response,
  T Function(Map<String, dynamic> json) callback,
) {
  final jsonMap = jsonDecode(response.bodyString) as Map<String, dynamic>;
  final item = callback(jsonMap);
  return response.copyWith(body: item);
}
