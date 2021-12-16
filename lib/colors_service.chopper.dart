// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colors_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ColorsService extends ColorsService {
  _$ColorsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ColorsService;

  @override
  Future<Response<List<ClColor>>> getColors(
      String lover,
      String hueRange,
      String briRange,
      String keywords,
      int keywordExact,
      String orderCol,
      String sortBy,
      int numResults,
      int resultOffset,
      String format) {
    final $url = '/colors/';
    final $params = <String, dynamic>{
      'lover': lover,
      'hueRange': hueRange,
      'briRange': briRange,
      'keywords': keywords,
      'keywordExact': keywordExact,
      'orderCol': orderCol,
      'sortBy': sortBy,
      'numResults': numResults,
      'resultOffset': resultOffset,
      'format': format
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<ClColor>, ClColor>($request,
        responseConverter: _allItems);
  }

  @override
  Future<Response<List<ClColor>>> getNewColors(
      String lover,
      String hueRange,
      String briRange,
      String keywords,
      int keywordExact,
      String sortBy,
      int numResults,
      int resultOffset,
      String format) {
    final $url = '/colors/new';
    final $params = <String, dynamic>{
      'lover': lover,
      'hueRange': hueRange,
      'briRange': briRange,
      'keywords': keywords,
      'keywordExact': keywordExact,
      'sortBy': sortBy,
      'numResults': numResults,
      'resultOffset': resultOffset,
      'format': format
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<ClColor>, ClColor>($request,
        responseConverter: _allItems);
  }

  @override
  Future<Response<List<ClColor>>> getTopColors(
      String lover,
      String hueRange,
      String briRange,
      String keywords,
      int keywordExact,
      String sortBy,
      int numResults,
      int resultOffset,
      String format) {
    final $url = '/colors/top';
    final $params = <String, dynamic>{
      'lover': lover,
      'hueRange': hueRange,
      'briRange': briRange,
      'keywords': keywords,
      'keywordExact': keywordExact,
      'sortBy': sortBy,
      'numResults': numResults,
      'resultOffset': resultOffset,
      'format': format
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<ClColor>, ClColor>($request,
        responseConverter: _allItems);
  }

  @override
  Future<Response<ClColor>> getRandomColor(String format) {
    final $url = '/colors/random';
    final $params = <String, dynamic>{'format': format};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ClColor, ClColor>($request,
        responseConverter: _firstItem);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ColorService extends ColorService {
  _$ColorService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ColorService;

  @override
  Future<Response<ClColor>> getColor(String hex, String format) {
    final $url = '/color/${hex}';
    final $params = <String, dynamic>{'format': format};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ClColor, ClColor>($request,
        responseConverter: _firstItem);
  }
}
