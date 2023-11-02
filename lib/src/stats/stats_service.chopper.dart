// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$StatsService extends StatsService {
  _$StatsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = StatsService;

  @override
  Future<Response<ColourloversStats>> getColorStats(String format) {
    final Uri $url = Uri.parse('/stats/colors');
    final Map<String, dynamic> $params = <String, dynamic>{'format': format};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ColourloversStats, ColourloversStats>(
      $request,
      responseConverter: _convertResponseObject,
    );
  }

  @override
  Future<Response<ColourloversStats>> getPaletteStats(String format) {
    final Uri $url = Uri.parse('/stats/palettes');
    final Map<String, dynamic> $params = <String, dynamic>{'format': format};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ColourloversStats, ColourloversStats>(
      $request,
      responseConverter: _convertResponseObject,
    );
  }

  @override
  Future<Response<ColourloversStats>> getPatternStats(String format) {
    final Uri $url = Uri.parse('/stats/patterns');
    final Map<String, dynamic> $params = <String, dynamic>{'format': format};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ColourloversStats, ColourloversStats>(
      $request,
      responseConverter: _convertResponseObject,
    );
  }

  @override
  Future<Response<ColourloversStats>> getLoverStats(String format) {
    final Uri $url = Uri.parse('/stats/lovers');
    final Map<String, dynamic> $params = <String, dynamic>{'format': format};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ColourloversStats, ColourloversStats>(
      $request,
      responseConverter: _convertResponseObject,
    );
  }
}
