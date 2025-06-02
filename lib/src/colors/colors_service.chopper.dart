// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colors_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ColorsService extends ColorsService {
  _$ColorsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ColorsService;

  @override
  Future<Response<List<ColourloversColor>>> getColors(
    String lover,
    String hueRange,
    String briRange,
    String keywords,
    int keywordExact,
    String orderCol,
    String sortBy,
    int numResults,
    int resultOffset,
    String format,
  ) {
    final Uri $url = Uri.parse('/colors/');
    final Map<String, dynamic> $params = <String, dynamic>{
      'lover': lover,
      'hueRange': hueRange,
      'briRange': briRange,
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
    return client.send<List<ColourloversColor>, ColourloversColor>(
      $request,
      responseConverter: _convertResponseList,
    );
  }

  @override
  Future<Response<List<ColourloversColor>>> getNewColors(
    String lover,
    String hueRange,
    String briRange,
    String keywords,
    int keywordExact,
    String sortBy,
    int numResults,
    int resultOffset,
    String format,
  ) {
    final Uri $url = Uri.parse('/colors/new');
    final Map<String, dynamic> $params = <String, dynamic>{
      'lover': lover,
      'hueRange': hueRange,
      'briRange': briRange,
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
    return client.send<List<ColourloversColor>, ColourloversColor>(
      $request,
      responseConverter: _convertResponseList,
    );
  }

  @override
  Future<Response<List<ColourloversColor>>> getTopColors(
    String lover,
    String hueRange,
    String briRange,
    String keywords,
    int keywordExact,
    String sortBy,
    int numResults,
    int resultOffset,
    String format,
  ) {
    final Uri $url = Uri.parse('/colors/top');
    final Map<String, dynamic> $params = <String, dynamic>{
      'lover': lover,
      'hueRange': hueRange,
      'briRange': briRange,
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
    return client.send<List<ColourloversColor>, ColourloversColor>(
      $request,
      responseConverter: _convertResponseList,
    );
  }

  @override
  Future<Response<ColourloversColor>> getRandomColor(String format) {
    final Uri $url = Uri.parse('/colors/random');
    final Map<String, dynamic> $params = <String, dynamic>{'format': format};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ColourloversColor, ColourloversColor>(
      $request,
      responseConverter: _convertResponseObject,
    );
  }
}

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ColorService extends ColorService {
  _$ColorService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ColorService;

  @override
  Future<Response<ColourloversColor>> getColor(String hex, String format) {
    final Uri $url = Uri.parse('/color/${hex}');
    final Map<String, dynamic> $params = <String, dynamic>{'format': format};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ColourloversColor, ColourloversColor>(
      $request,
      responseConverter: _convertResponseObject,
    );
  }
}
