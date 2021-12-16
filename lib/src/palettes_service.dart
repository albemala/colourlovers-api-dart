import 'dart:async';

import 'package:chopper/chopper.dart';
import 'converters.dart';
import 'palette.dart';

part 'palettes_service.chopper.dart';

@ChopperApi(baseUrl: "/palettes")
abstract class PalettesService extends ChopperService {
  static PalettesService create([ChopperClient? client]) => _$PalettesService(client);

  @FactoryConverter(
    response: _allItems,
  )
  @Get(path: "/")
  Future<Response<List<ClPalette>>> getPalettes(
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

  @FactoryConverter(
    response: _allItems,
  )
  @Get(path: "/new")
  Future<Response<List<ClPalette>>> getNewPalettes(
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

  @FactoryConverter(
    response: _allItems,
  )
  @Get(path: "/top")
  Future<Response<List<ClPalette>>> getTopPalettes(
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

  @FactoryConverter(
    response: _firstItem,
  )
  @Get(path: "/random")
  Future<Response<ClPalette>> getRandomPalette(
    @Query() String format,
  );
}

@ChopperApi(baseUrl: "/palette")
abstract class PaletteService extends ChopperService {
  static PaletteService create([ChopperClient? client]) => _$PaletteService(client);

  @FactoryConverter(
    response: _firstItem,
  )
  @Get(path: "/{id}")
  Future<Response<ClPalette>> getPalette(
    @Path() String id,
    @Query() int showPaletteWidths,
    @Query() String format,
  );
}

Response _firstItem<T>(Response response) {
  return firstItem(response, ClPalette.fromJson);
}

Response _allItems<T>(Response response) {
  return allItems(response, ClPalette.fromJson);
}
