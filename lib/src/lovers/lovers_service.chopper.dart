// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lovers_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$LoversService extends LoversService {
  _$LoversService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = LoversService;

  @override
  Future<Response<List<ColourloversLover>>> getLovers(
    String orderCol,
    String sortBy,
    int numResults,
    int resultOffset,
    String format,
  ) {
    final Uri $url = Uri.parse('/lovers/');
    final Map<String, dynamic> $params = <String, dynamic>{
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
    return client.send<List<ColourloversLover>, ColourloversLover>(
      $request,
      responseConverter: _convertResponseList,
    );
  }

  @override
  Future<Response<List<ColourloversLover>>> getNewLovers(
    String sortBy,
    int numResults,
    int resultOffset,
    String format,
  ) {
    final Uri $url = Uri.parse('/lovers/new');
    final Map<String, dynamic> $params = <String, dynamic>{
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
    return client.send<List<ColourloversLover>, ColourloversLover>(
      $request,
      responseConverter: _convertResponseList,
    );
  }

  @override
  Future<Response<List<ColourloversLover>>> getTopLovers(
    String sortBy,
    int numResults,
    int resultOffset,
    String format,
  ) {
    final Uri $url = Uri.parse('/lovers/top');
    final Map<String, dynamic> $params = <String, dynamic>{
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
    return client.send<List<ColourloversLover>, ColourloversLover>(
      $request,
      responseConverter: _convertResponseList,
    );
  }
}

// ignore_for_file: type=lint
final class _$LoverService extends LoverService {
  _$LoverService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = LoverService;

  @override
  Future<Response<ColourloversLover>> getLover(
    String userName,
    int comments,
    String format,
  ) {
    final Uri $url = Uri.parse('/lover/${userName}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'comments': comments,
      'format': format,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ColourloversLover, ColourloversLover>(
      $request,
      responseConverter: _convertResponseObject,
    );
  }
}
