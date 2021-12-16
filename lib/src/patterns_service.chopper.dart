// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patterns_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PatternsService extends PatternsService {
  _$PatternsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PatternsService;

  @override
  Future<Response<List<ClPattern>>> getPatterns(
      String lover,
      String hueOption,
      String hex,
      String hexLogic,
      String keywords,
      int keywordExact,
      String orderCol,
      String sortBy,
      int numResults,
      int resultOffset,
      String format) {
    final $url = '/patterns/';
    final $params = <String, dynamic>{
      'lover': lover,
      'hueOption': hueOption,
      'hex': hex,
      'hexLogic': hexLogic,
      'keywords': keywords,
      'keywordExact': keywordExact,
      'orderCol': orderCol,
      'sortBy': sortBy,
      'numResults': numResults,
      'resultOffset': resultOffset,
      'format': format
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<ClPattern>, ClPattern>($request, responseConverter: _allItems);
  }

  @override
  Future<Response<List<ClPattern>>> getNewPatterns(String lover, String hueOption, String hex, String hexLogic,
      String keywords, int keywordExact, String sortBy, int numResults, int resultOffset, String format) {
    final $url = '/patterns/new';
    final $params = <String, dynamic>{
      'lover': lover,
      'hueOption': hueOption,
      'hex': hex,
      'hexLogic': hexLogic,
      'keywords': keywords,
      'keywordExact': keywordExact,
      'sortBy': sortBy,
      'numResults': numResults,
      'resultOffset': resultOffset,
      'format': format
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<ClPattern>, ClPattern>($request, responseConverter: _allItems);
  }

  @override
  Future<Response<List<ClPattern>>> getTopPatterns(String lover, String hueOption, String hex, String hexLogic,
      String keywords, int keywordExact, String sortBy, int numResults, int resultOffset, String format) {
    final $url = '/patterns/top';
    final $params = <String, dynamic>{
      'lover': lover,
      'hueOption': hueOption,
      'hex': hex,
      'hexLogic': hexLogic,
      'keywords': keywords,
      'keywordExact': keywordExact,
      'sortBy': sortBy,
      'numResults': numResults,
      'resultOffset': resultOffset,
      'format': format
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<ClPattern>, ClPattern>($request, responseConverter: _allItems);
  }

  @override
  Future<Response<ClPattern>> getRandomPattern(String format) {
    final $url = '/patterns/random';
    final $params = <String, dynamic>{'format': format};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ClPattern, ClPattern>($request, responseConverter: _firstItem);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PatternService extends PatternService {
  _$PatternService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PatternService;

  @override
  Future<Response<ClPattern>> getPattern(String id, String format) {
    final $url = '/pattern/${id}';
    final $params = <String, dynamic>{'format': format};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ClPattern, ClPattern>($request, responseConverter: _firstItem);
  }
}
