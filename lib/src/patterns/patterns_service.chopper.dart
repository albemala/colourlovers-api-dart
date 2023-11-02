// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patterns_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$PatternsService extends PatternsService {
  _$PatternsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PatternsService;

  @override
  Future<Response<List<ColourloversPattern>>> getPatterns(
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
    String format,
  ) {
    final Uri $url = Uri.parse('/patterns/');
    final Map<String, dynamic> $params = <String, dynamic>{
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
      'format': format,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<ColourloversPattern>, ColourloversPattern>(
      $request,
      responseConverter: _convertResponseList,
    );
  }

  @override
  Future<Response<List<ColourloversPattern>>> getNewPatterns(
    String lover,
    String hueOption,
    String hex,
    String hexLogic,
    String keywords,
    int keywordExact,
    String sortBy,
    int numResults,
    int resultOffset,
    String format,
  ) {
    final Uri $url = Uri.parse('/patterns/new');
    final Map<String, dynamic> $params = <String, dynamic>{
      'lover': lover,
      'hueOption': hueOption,
      'hex': hex,
      'hexLogic': hexLogic,
      'keywords': keywords,
      'keywordExact': keywordExact,
      'sortBy': sortBy,
      'numResults': numResults,
      'resultOffset': resultOffset,
      'format': format,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<ColourloversPattern>, ColourloversPattern>(
      $request,
      responseConverter: _convertResponseList,
    );
  }

  @override
  Future<Response<List<ColourloversPattern>>> getTopPatterns(
    String lover,
    String hueOption,
    String hex,
    String hexLogic,
    String keywords,
    int keywordExact,
    String sortBy,
    int numResults,
    int resultOffset,
    String format,
  ) {
    final Uri $url = Uri.parse('/patterns/top');
    final Map<String, dynamic> $params = <String, dynamic>{
      'lover': lover,
      'hueOption': hueOption,
      'hex': hex,
      'hexLogic': hexLogic,
      'keywords': keywords,
      'keywordExact': keywordExact,
      'sortBy': sortBy,
      'numResults': numResults,
      'resultOffset': resultOffset,
      'format': format,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<ColourloversPattern>, ColourloversPattern>(
      $request,
      responseConverter: _convertResponseList,
    );
  }

  @override
  Future<Response<ColourloversPattern>> getRandomPattern(String format) {
    final Uri $url = Uri.parse('/patterns/random');
    final Map<String, dynamic> $params = <String, dynamic>{'format': format};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ColourloversPattern, ColourloversPattern>(
      $request,
      responseConverter: _convertResponseObject,
    );
  }
}

// ignore_for_file: type=lint
final class _$PatternService extends PatternService {
  _$PatternService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PatternService;

  @override
  Future<Response<ColourloversPattern>> getPattern(
    String id,
    String format,
  ) {
    final Uri $url = Uri.parse('/pattern/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{'format': format};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ColourloversPattern, ColourloversPattern>(
      $request,
      responseConverter: _convertResponseObject,
    );
  }
}
