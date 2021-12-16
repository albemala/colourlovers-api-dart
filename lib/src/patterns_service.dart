import 'dart:async';

import 'package:chopper/chopper.dart';
import 'converters.dart';
import 'pattern.dart';

part 'patterns_service.chopper.dart';

@ChopperApi(baseUrl: "/patterns")
abstract class PatternsService extends ChopperService {
  static PatternsService create([ChopperClient? client]) => _$PatternsService(client);

  @FactoryConverter(
    response: _allItems,
  )
  @Get(path: "/")
  Future<Response<List<ClPattern>>> getPatterns(
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

  @FactoryConverter(
    response: _allItems,
  )
  @Get(path: "/new")
  Future<Response<List<ClPattern>>> getNewPatterns(
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

  @FactoryConverter(
    response: _allItems,
  )
  @Get(path: "/top")
  Future<Response<List<ClPattern>>> getTopPatterns(
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

  @FactoryConverter(
    response: _firstItem,
  )
  @Get(path: "/random")
  Future<Response<ClPattern>> getRandomPattern(
    @Query() String format,
  );
}

@ChopperApi(baseUrl: "/pattern")
abstract class PatternService extends ChopperService {
  static PatternService create([ChopperClient? client]) => _$PatternService(client);

  @FactoryConverter(
    response: _firstItem,
  )
  @Get(path: "/{id}")
  Future<Response<ClPattern>> getPattern(
    @Path() String id,
    @Query() String format,
  );
}

Response _firstItem<T>(Response response) {
  return firstItem(response, ClPattern.fromJson);
}

Response _allItems<T>(Response response) {
  return allItems(response, ClPattern.fromJson);
}
