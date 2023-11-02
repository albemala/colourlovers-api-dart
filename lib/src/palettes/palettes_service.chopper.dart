// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'palettes_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$PalettesService extends PalettesService {
  _$PalettesService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PalettesService;

  @override
  Future<Response<List<ColourloversPalette>>> getPalettes(
    String lover,
    String hueOption,
    String hex,
    String hexLogic,
    int showPaletteWidths,
    String keywords,
    int keywordExact,
    String orderCol,
    String sortBy,
    int numResults,
    int resultOffset,
    String format,
  ) {
    final Uri $url = Uri.parse('/palettes/');
    final Map<String, dynamic> $params = <String, dynamic>{
      'lover': lover,
      'hueOption': hueOption,
      'hex': hex,
      'hexLogic': hexLogic,
      'showPaletteWidths': showPaletteWidths,
      'keywords': keywords,
      'keywordExact': keywordExact,
      'orderCol': orderCol,
      'sortBy': sortBy,
      'numResults': numResults,
      'resultOffset': resultOffset,
      'format': format,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<ColourloversPalette>, ColourloversPalette>(
      $request,
      responseConverter: _convertResponseList,
    );
  }

  @override
  Future<Response<List<ColourloversPalette>>> getNewPalettes(
    String lover,
    String hueOption,
    String hex,
    String hexLogic,
    int showPaletteWidths,
    String keywords,
    int keywordExact,
    String sortBy,
    int numResults,
    int resultOffset,
    String format,
  ) {
    final Uri $url = Uri.parse('/palettes/new');
    final Map<String, dynamic> $params = <String, dynamic>{
      'lover': lover,
      'hueOption': hueOption,
      'hex': hex,
      'hexLogic': hexLogic,
      'showPaletteWidths': showPaletteWidths,
      'keywords': keywords,
      'keywordExact': keywordExact,
      'sortBy': sortBy,
      'numResults': numResults,
      'resultOffset': resultOffset,
      'format': format,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<ColourloversPalette>, ColourloversPalette>(
      $request,
      responseConverter: _convertResponseList,
    );
  }

  @override
  Future<Response<List<ColourloversPalette>>> getTopPalettes(
    String lover,
    String hueOption,
    String hex,
    String hexLogic,
    int showPaletteWidths,
    String keywords,
    int keywordExact,
    String sortBy,
    int numResults,
    int resultOffset,
    String format,
  ) {
    final Uri $url = Uri.parse('/palettes/top');
    final Map<String, dynamic> $params = <String, dynamic>{
      'lover': lover,
      'hueOption': hueOption,
      'hex': hex,
      'hexLogic': hexLogic,
      'showPaletteWidths': showPaletteWidths,
      'keywords': keywords,
      'keywordExact': keywordExact,
      'sortBy': sortBy,
      'numResults': numResults,
      'resultOffset': resultOffset,
      'format': format,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<ColourloversPalette>, ColourloversPalette>(
      $request,
      responseConverter: _convertResponseList,
    );
  }

  @override
  Future<Response<ColourloversPalette>> getRandomPalette(String format) {
    final Uri $url = Uri.parse('/palettes/random');
    final Map<String, dynamic> $params = <String, dynamic>{'format': format};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ColourloversPalette, ColourloversPalette>(
      $request,
      responseConverter: _convertResponseObject,
    );
  }
}

// ignore_for_file: type=lint
final class _$PaletteService extends PaletteService {
  _$PaletteService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PaletteService;

  @override
  Future<Response<ColourloversPalette>> getPalette(
    String id,
    int showPaletteWidths,
    String format,
  ) {
    final Uri $url = Uri.parse('/palette/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'showPaletteWidths': showPaletteWidths,
      'format': format,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ColourloversPalette, ColourloversPalette>(
      $request,
      responseConverter: _convertResponseObject,
    );
  }
}
