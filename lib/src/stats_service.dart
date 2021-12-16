import 'dart:async';

import 'package:chopper/chopper.dart';
import 'stats.dart';

part 'stats_service.chopper.dart';

@ChopperApi(baseUrl: "/stats")
abstract class StatsService extends ChopperService {
  static StatsService create([ChopperClient? client]) => _$StatsService(client);

  @FactoryConverter(
    response: _getItem,
  )
  @Get(path: "/colors")
  Future<Response<ClStats>> getColorStats(
    @Query() String format,
  );

  @FactoryConverter(
    response: _getItem,
  )
  @Get(path: "/palettes")
  Future<Response<ClStats>> getPaletteStats(
    @Query() String format,
  );

  @FactoryConverter(
    response: _getItem,
  )
  @Get(path: "/patterns")
  Future<Response<ClStats>> getPatternStats(
    @Query() String format,
  );

  @FactoryConverter(
    response: _getItem,
  )
  @Get(path: "/lovers")
  Future<Response<ClStats>> getLoverStats(
    @Query() String format,
  );
}

Response _getItem<T>(Response response) {
  final Map<String, dynamic> jsonBody = const JsonConverter().convertResponse(response).body;
  return response.copyWith(
    body: ClStats.fromJson(jsonBody),
  );
}
