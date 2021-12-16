// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$StatsService extends StatsService {
  _$StatsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = StatsService;

  @override
  Future<Response<ClStats>> getColorStats(String format) {
    final $url = '/stats/colors';
    final $params = <String, dynamic>{'format': format};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ClStats, ClStats>($request, responseConverter: _getItem);
  }

  @override
  Future<Response<ClStats>> getPaletteStats(String format) {
    final $url = '/stats/palettes';
    final $params = <String, dynamic>{'format': format};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ClStats, ClStats>($request, responseConverter: _getItem);
  }

  @override
  Future<Response<ClStats>> getPatternStats(String format) {
    final $url = '/stats/patterns';
    final $params = <String, dynamic>{'format': format};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ClStats, ClStats>($request, responseConverter: _getItem);
  }

  @override
  Future<Response<ClStats>> getLoverStats(String format) {
    final $url = '/stats/lovers';
    final $params = <String, dynamic>{'format': format};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ClStats, ClStats>($request, responseConverter: _getItem);
  }
}
