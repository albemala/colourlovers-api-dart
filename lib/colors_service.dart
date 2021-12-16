import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:colourlovers_api/color.dart';
import 'package:colourlovers_api/converters.dart';

part "colors_service.chopper.dart";

@ChopperApi(baseUrl: "/colors")
abstract class ColorsService extends ChopperService {
  static ColorsService create([ChopperClient? client]) => _$ColorsService(client);

  @FactoryConverter(
    response: _allItems,
  )
  @Get(path: "/")
  Future<Response<List<ClColor>>> getColors(
    @Query() String lover,
    @Query() String hueRange,
    @Query() String briRange,
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
  Future<Response<List<ClColor>>> getNewColors(
    @Query() String lover,
    @Query() String hueRange,
    @Query() String briRange,
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
  Future<Response<List<ClColor>>> getTopColors(
    @Query() String lover,
    @Query() String hueRange,
    @Query() String briRange,
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
  Future<Response<ClColor>> getRandomColor(
    @Query() String format,
  );
}

@ChopperApi(baseUrl: "/color")
abstract class ColorService extends ChopperService {
  static ColorService create([ChopperClient? client]) => _$ColorService(client);

  @FactoryConverter(
    response: _firstItem,
  )
  @Get(path: "/{hex}")
  Future<Response<ClColor>> getColor(
    @Path() String hex,
    @Query() String format,
  );
}

Response _firstItem<T>(Response response) {
  return firstItem(response, ClColor.fromJson);
}

Response _allItems<T>(Response response) {
  return allItems(response, ClColor.fromJson);
}
