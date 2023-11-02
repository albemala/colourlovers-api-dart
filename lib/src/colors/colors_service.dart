import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:colourlovers_api/src/colors/color.dart';
import 'package:colourlovers_api/src/converters.dart';

part 'colors_service.chopper.dart';

@ChopperApi(baseUrl: '/colors')
abstract class ColorsService extends ChopperService {
  static ColorsService create([ChopperClient? client]) =>
      _$ColorsService(client);

  @FactoryConverter(
    response: _convertResponseList,
  )
  @Get(path: '/')
  Future<Response<List<ColourloversColor>>> getColors(
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
    response: _convertResponseList,
  )
  @Get(path: '/new')
  Future<Response<List<ColourloversColor>>> getNewColors(
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
    response: _convertResponseList,
  )
  @Get(path: '/top')
  Future<Response<List<ColourloversColor>>> getTopColors(
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
    response: _convertResponseObject,
  )
  @Get(path: '/random')
  Future<Response<ColourloversColor>> getRandomColor(
    @Query() String format,
  );
}

@ChopperApi(baseUrl: '/color')
abstract class ColorService extends ChopperService {
  static ColorService create([ChopperClient? client]) => _$ColorService(client);

  @FactoryConverter(
    response: _convertResponseObject,
  )
  @Get(path: '/{hex}')
  Future<Response<ColourloversColor>> getColor(
    @Path() String hex,
    @Query() String format,
  );
}

Response<ColourloversColor> _convertResponseObject(
  Response<dynamic> response,
) {
  return convertResponseFirstObject(
    response,
    ColourloversColor.fromJson,
  );
}

Response<List<ColourloversColor>> _convertResponseList(
  Response<dynamic> response,
) {
  return convertResponseList(
    response,
    ColourloversColor.fromJson,
  );
}
