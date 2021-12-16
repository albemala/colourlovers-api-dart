// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'palettes_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PalettesService extends PalettesService {
  _$PalettesService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PalettesService;

  @override
  Future<Response<List<ClPalette>>> getPalettes(
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
      String format) {
    final $url = '/palettes/';
    final $params = <String, dynamic>{
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
      'format': format
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<ClPalette>, ClPalette>($request,
        responseConverter: _allItems);
  }

  @override
  Future<Response<List<ClPalette>>> getNewPalettes(
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
      String format) {
    final $url = '/palettes/new';
    final $params = <String, dynamic>{
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
      'format': format
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<ClPalette>, ClPalette>($request,
        responseConverter: _allItems);
  }

  @override
  Future<Response<List<ClPalette>>> getTopPalettes(
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
      String format) {
    final $url = '/palettes/top';
    final $params = <String, dynamic>{
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
      'format': format
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<ClPalette>, ClPalette>($request,
        responseConverter: _allItems);
  }

  @override
  Future<Response<ClPalette>> getRandomPalette(String format) {
    final $url = '/palettes/random';
    final $params = <String, dynamic>{'format': format};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ClPalette, ClPalette>($request,
        responseConverter: _firstItem);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PaletteService extends PaletteService {
  _$PaletteService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PaletteService;

  @override
  Future<Response<ClPalette>> getPalette(
      String id, int showPaletteWidths, String format) {
    final $url = '/palette/${id}';
    final $params = <String, dynamic>{
      'showPaletteWidths': showPaletteWidths,
      'format': format
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ClPalette, ClPalette>($request,
        responseConverter: _firstItem);
  }
}
