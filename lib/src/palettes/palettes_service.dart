import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:colourlovers_api/colourlovers_api.dart';
import 'package:colourlovers_api/src/converters.dart';

part 'palettes_service.chopper.dart';

@ChopperApi(baseUrl: '/palettes')
abstract class PalettesService extends ChopperService {
  static PalettesService create([ChopperClient? client]) =>
      _$PalettesService(client);

  @FactoryConverter(response: _convertResponseList)
  @GET(path: '/')
  Future<Response<List<ColourloversPalette>>> getPalettes(
    @Query() String lover,
    @Query() String hueOption,
    @Query() String hex,
    @Query() String hexLogic,
    @Query() int showPaletteWidths,
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
  Future<Response<List<ColourloversPalette>>> getNewPalettes(
    @Query() String lover,
    @Query() String hueOption,
    @Query() String hex,
    @Query() String hexLogic,
    @Query() int showPaletteWidths,
    @Query() String keywords,
    @Query() int keywordExact,
    @Query() String sortBy,
    @Query() int numResults,
    @Query() int resultOffset,
    @Query() String format,
  );

  @FactoryConverter(response: _convertResponseList)
  @GET(path: '/top')
  Future<Response<List<ColourloversPalette>>> getTopPalettes(
    @Query() String lover,
    @Query() String hueOption,
    @Query() String hex,
    @Query() String hexLogic,
    @Query() int showPaletteWidths,
    @Query() String keywords,
    @Query() int keywordExact,
    @Query() String sortBy,
    @Query() int numResults,
    @Query() int resultOffset,
    @Query() String format,
  );

  @FactoryConverter(response: _convertResponseObject)
  @GET(path: '/random')
  Future<Response<ColourloversPalette>> getRandomPalette(
    @Query() String format,
  );
}

@ChopperApi(baseUrl: '/palette')
abstract class PaletteService extends ChopperService {
  static PaletteService create([ChopperClient? client]) =>
      _$PaletteService(client);

  @FactoryConverter(response: _convertResponseObject)
  @GET(path: '/{id}')
  Future<Response<ColourloversPalette>> getPalette(
    @Path() String id,
    @Query() int showPaletteWidths,
    @Query() String format,
  );
}

Response<ColourloversPalette> _convertResponseObject(
  Response<dynamic> response,
) {
  return convertResponseFirstObject(response, ColourloversPalette.fromJson);
}

Response<List<ColourloversPalette>> _convertResponseList(
  Response<dynamic> response,
) {
  return convertResponseList(response, ColourloversPalette.fromJson);
}
