// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lovers_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$LoversService extends LoversService {
  _$LoversService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = LoversService;

  @override
  Future<Response<List<ClLover>>> getLovers(String orderCol, String sortBy,
      int numResults, int resultOffset, String format) {
    final $url = '/lovers/';
    final $params = <String, dynamic>{
      'orderCol': orderCol,
      'sortBy': sortBy,
      'numResults': numResults,
      'resultOffset': resultOffset,
      'format': format
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<ClLover>, ClLover>($request,
        responseConverter: _allItems);
  }

  @override
  Future<Response<List<ClLover>>> getNewLovers(
      String sortBy, int numResults, int resultOffset, String format) {
    final $url = '/lovers/new';
    final $params = <String, dynamic>{
      'sortBy': sortBy,
      'numResults': numResults,
      'resultOffset': resultOffset,
      'format': format
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<ClLover>, ClLover>($request,
        responseConverter: _allItems);
  }

  @override
  Future<Response<List<ClLover>>> getTopLovers(
      String sortBy, int numResults, int resultOffset, String format) {
    final $url = '/lovers/top';
    final $params = <String, dynamic>{
      'sortBy': sortBy,
      'numResults': numResults,
      'resultOffset': resultOffset,
      'format': format
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<ClLover>, ClLover>($request,
        responseConverter: _allItems);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$LoverService extends LoverService {
  _$LoverService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = LoverService;

  @override
  Future<Response<ClLover>> getLover(
      String userName, int comments, String format) {
    final $url = '/lover/${userName}';
    final $params = <String, dynamic>{'comments': comments, 'format': format};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ClLover, ClLover>($request,
        responseConverter: _firstItem);
  }
}
