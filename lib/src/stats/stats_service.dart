import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:colourlovers_api/src/converters.dart';
import 'package:colourlovers_api/src/stats/stats.dart';

part 'stats_service.chopper.dart';

@ChopperApi(baseUrl: '/stats')
abstract class StatsService extends ChopperService {
  static StatsService create([ChopperClient? client]) => _$StatsService(client);

  @FactoryConverter(
    response: _convertResponseObject,
  )
  @Get(path: '/colors')
  Future<Response<ColourloversStats>> getColorStats(
    @Query() String format,
  );

  @FactoryConverter(
    response: _convertResponseObject,
  )
  @Get(path: '/palettes')
  Future<Response<ColourloversStats>> getPaletteStats(
    @Query() String format,
  );

  @FactoryConverter(
    response: _convertResponseObject,
  )
  @Get(path: '/patterns')
  Future<Response<ColourloversStats>> getPatternStats(
    @Query() String format,
  );

  @FactoryConverter(
    response: _convertResponseObject,
  )
  @Get(path: '/lovers')
  Future<Response<ColourloversStats>> getLoverStats(
    @Query() String format,
  );
}

Response<ColourloversStats> _convertResponseObject(
  Response<dynamic> response,
) {
  return convertResponseObject(
    response,
    ColourloversStats.fromJson,
  );
}
