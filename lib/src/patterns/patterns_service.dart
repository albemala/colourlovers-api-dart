import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:colourlovers_api/src/converters.dart';
import 'package:colourlovers_api/src/patterns/pattern.dart';

part 'patterns_service.chopper.dart';

@ChopperApi(baseUrl: '/patterns')
abstract class PatternsService extends ChopperService {
  static PatternsService create([ChopperClient? client]) =>
      _$PatternsService(client);

  @FactoryConverter(response: _convertResponseList)
  @GET(path: '/')
  Future<Response<List<ColourloversPattern>>> getPatterns(
    @Query() String lover,
    @Query() String hueOption,
    @Query() String hex,
    @Query() String hexLogic,
    @Query() String keywords,
    @Query() int keywordExact,
    @Query() String orderCol,
    @Query() String sortBy,
    @Query() int numResults,
    @Query() int resultOffset,
    @Query() String format,
  );

  @FactoryConverter(response: _convertResponseList)
  @GET(path: '/new')
  Future<Response<List<ColourloversPattern>>> getNewPatterns(
    @Query() String lover,
    @Query() String hueOption,
    @Query() String hex,
    @Query() String hexLogic,
    @Query() String keywords,
    @Query() int keywordExact,
    @Query() String sortBy,
    @Query() int numResults,
    @Query() int resultOffset,
    @Query() String format,
  );

  @FactoryConverter(response: _convertResponseList)
  @GET(path: '/top')
  Future<Response<List<ColourloversPattern>>> getTopPatterns(
    @Query() String lover,
    @Query() String hueOption,
    @Query() String hex,
    @Query() String hexLogic,
    @Query() String keywords,
    @Query() int keywordExact,
    @Query() String sortBy,
    @Query() int numResults,
    @Query() int resultOffset,
    @Query() String format,
  );

  @FactoryConverter(response: _convertResponseObject)
  @GET(path: '/random')
  Future<Response<ColourloversPattern>> getRandomPattern(
    @Query() String format,
  );
}

@ChopperApi(baseUrl: '/pattern')
abstract class PatternService extends ChopperService {
  static PatternService create([ChopperClient? client]) =>
      _$PatternService(client);

  @FactoryConverter(response: _convertResponseObject)
  @GET(path: '/{id}')
  Future<Response<ColourloversPattern>> getPattern(
    @Path() String id,
    @Query() String format,
  );
}

Response<ColourloversPattern> _convertResponseObject(
  Response<dynamic> response,
) {
  return convertResponseFirstObject(response, ColourloversPattern.fromJson);
}

Response<List<ColourloversPattern>> _convertResponseList(
  Response<dynamic> response,
) {
  return convertResponseList(response, ColourloversPattern.fromJson);
}
