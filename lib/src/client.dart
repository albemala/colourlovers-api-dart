import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:colourlovers_api/src/colors/color.dart';
import 'package:colourlovers_api/src/colors/colors_service.dart';
import 'package:colourlovers_api/src/lovers/lover.dart';
import 'package:colourlovers_api/src/lovers/lovers_service.dart';
import 'package:colourlovers_api/src/palettes/palette.dart';
import 'package:colourlovers_api/src/palettes/palettes_service.dart';
import 'package:colourlovers_api/src/parameters.dart';
import 'package:colourlovers_api/src/patterns/pattern.dart';
import 'package:colourlovers_api/src/patterns/patterns_service.dart';
import 'package:colourlovers_api/src/stats/stats.dart';
import 'package:colourlovers_api/src/stats/stats_service.dart';

class ColourloversApiClient {
  /*
  * Colors
  */

  Future<List<ColourloversColor>?> getColors({
    String lover = '',
    int hueMin = 0,
    int hueMax = 359,
    int brightnessMin = 0,
    int brightnessMax = 99,
    String keywords = '',
    bool keywordExact = false,
    ColourloversRequestOrderBy orderBy = ColourloversRequestOrderBy.dateCreated,
    ColourloversRequestSortBy sortBy = ColourloversRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    assert(hueMin >= 0 && hueMin <= 359, 'hueMin must be between 0 and 359');
    assert(hueMin < hueMax, 'hueMin must be less than hueMax');

    assert(
      brightnessMin >= 0 && brightnessMax <= 99,
      'brightnessMin must be between 0 and 99',
    );
    assert(
      brightnessMin < brightnessMax,
      'brightnessMin must be less than brightnessMax',
    );

    return _callClient<List<ColourloversColor>?, ColorsService>(
      (service) => service.getColors(
        lover,
        '$hueMin,$hueMax',
        '$brightnessMin,$brightnessMax',
        keywords,
        keywordExact ? 1 : 0,
        orderBy.name,
        sortBy.name,
        numResults,
        resultOffset,
        ColourloversRequestFormat.json.name,
      ),
    );
  }

  Future<List<ColourloversColor>?> getNewColors({
    String lover = '',
    int hueMin = 0,
    int hueMax = 359,
    int brightnessMin = 0,
    int brightnessMax = 99,
    String keywords = '',
    bool keywordExact = false,
    ColourloversRequestSortBy sortBy = ColourloversRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ColourloversColor>?, ColorsService>(
      (service) => service.getNewColors(
        lover,
        '$hueMin,$hueMax',
        '$brightnessMin,$brightnessMax',
        keywords,
        keywordExact ? 1 : 0,
        sortBy.name,
        numResults,
        resultOffset,
        ColourloversRequestFormat.json.name,
      ),
    );
  }

  Future<List<ColourloversColor>?> getTopColors({
    String lover = '',
    int hueMin = 0,
    int hueMax = 359,
    int brightnessMin = 0,
    int brightnessMax = 99,
    String keywords = '',
    bool keywordExact = false,
    ColourloversRequestSortBy sortBy = ColourloversRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ColourloversColor>?, ColorsService>(
      (service) => service.getTopColors(
        lover,
        '$hueMin,$hueMax',
        '$brightnessMin,$brightnessMax',
        keywords,
        keywordExact ? 1 : 0,
        sortBy.name,
        numResults,
        resultOffset,
        ColourloversRequestFormat.json.name,
      ),
    );
  }

  Future<ColourloversColor?> getRandomColor() async {
    return _callClient<ColourloversColor?, ColorsService>(
      (service) => service.getRandomColor(ColourloversRequestFormat.json.name),
    );
  }

  ///
  /// [hex] is any 6-char hex value (a hex color representation).
  Future<ColourloversColor?> getColor({required String hex}) async {
    assert(hex.length == 6, 'hex must be 6 characters long');
    assert(RegExp(r'^[0-9a-fA-F]+$').hasMatch(hex), 'hex must be a hex value');

    return _callClient<ColourloversColor?, ColorService>(
      (service) => service.getColor(hex, ColourloversRequestFormat.json.name),
    );
  }

  /*
  * Palettes
  */

  Future<List<ColourloversPalette>?> getPalettes({
    String lover = '',
    List<ColourloversRequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    ColourloversRequestHexLogic hexLogic = ColourloversRequestHexLogic.AND,
    String keywords = '',
    bool keywordExact = false,
    bool showPaletteWidths = false,
    ColourloversRequestOrderBy orderBy = ColourloversRequestOrderBy.dateCreated,
    ColourloversRequestSortBy sortBy = ColourloversRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ColourloversPalette>?, PalettesService>(
      (service) => service.getPalettes(
        lover,
        hueRanges.map((hue) => hue.name).join(','),
        hex.join(','),
        hexLogic.name,
        showPaletteWidths ? 1 : 0,
        keywords,
        keywordExact ? 1 : 0,
        orderBy.name,
        sortBy.name,
        numResults,
        resultOffset,
        ColourloversRequestFormat.json.name,
      ),
    );
  }

  Future<List<ColourloversPalette>?> getNewPalettes({
    String lover = '',
    List<ColourloversRequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    ColourloversRequestHexLogic hexLogic = ColourloversRequestHexLogic.AND,
    String keywords = '',
    bool keywordExact = false,
    bool showPaletteWidths = false,
    ColourloversRequestSortBy sortBy = ColourloversRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ColourloversPalette>?, PalettesService>(
      (service) => service.getNewPalettes(
        lover,
        hueRanges.map((hue) => hue.name).join(','),
        hex.join(','),
        hexLogic.name,
        showPaletteWidths ? 1 : 0,
        keywords,
        keywordExact ? 1 : 0,
        sortBy.name,
        numResults,
        resultOffset,
        ColourloversRequestFormat.json.name,
      ),
    );
  }

  Future<List<ColourloversPalette>?> getTopPalettes({
    String lover = '',
    List<ColourloversRequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    ColourloversRequestHexLogic hexLogic = ColourloversRequestHexLogic.AND,
    String keywords = '',
    bool keywordExact = false,
    bool showPaletteWidths = false,
    ColourloversRequestSortBy sortBy = ColourloversRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ColourloversPalette>?, PalettesService>(
      (service) => service.getTopPalettes(
        lover,
        hueRanges.map((hue) => hue.name).join(','),
        hex.join(','),
        hexLogic.name,
        showPaletteWidths ? 1 : 0,
        keywords,
        keywordExact ? 1 : 0,
        sortBy.name,
        numResults,
        resultOffset,
        ColourloversRequestFormat.json.name,
      ),
    );
  }

  Future<ColourloversPalette?> getRandomPalette() async {
    return _callClient<ColourloversPalette?, PalettesService>(
      (service) =>
          service.getRandomPalette(ColourloversRequestFormat.json.name),
    );
  }

  Future<ColourloversPalette?> getPalette({
    required int id,
    bool showPaletteWidths = false,
  }) async {
    return _callClient<ColourloversPalette?, PaletteService>(
      (service) => service.getPalette(
        id.toString(),
        showPaletteWidths ? 1 : 0,
        ColourloversRequestFormat.json.name,
      ),
    );
  }

  /*
  * Patterns
  */

  Future<List<ColourloversPattern>?> getPatterns({
    String lover = '',
    List<ColourloversRequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    ColourloversRequestHexLogic hexLogic = ColourloversRequestHexLogic.AND,
    String keywords = '',
    bool keywordExact = false,
    ColourloversRequestOrderBy orderBy = ColourloversRequestOrderBy.dateCreated,
    ColourloversRequestSortBy sortBy = ColourloversRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ColourloversPattern>?, PatternsService>(
      (service) => service.getPatterns(
        lover,
        hueRanges.map((hue) => hue.name).join(','),
        hex.join(','),
        hexLogic.name,
        keywords,
        keywordExact ? 1 : 0,
        orderBy.name,
        sortBy.name,
        numResults,
        resultOffset,
        ColourloversRequestFormat.json.name,
      ),
    );
  }

  Future<List<ColourloversPattern>?> getNewPatterns({
    String lover = '',
    List<ColourloversRequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    ColourloversRequestHexLogic hexLogic = ColourloversRequestHexLogic.AND,
    String keywords = '',
    bool keywordExact = false,
    ColourloversRequestSortBy sortBy = ColourloversRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ColourloversPattern>?, PatternsService>(
      (service) => service.getNewPatterns(
        lover,
        hueRanges.map((hue) => hue.name).join(','),
        hex.join(','),
        hexLogic.name,
        keywords,
        keywordExact ? 1 : 0,
        sortBy.name,
        numResults,
        resultOffset,
        ColourloversRequestFormat.json.name,
      ),
    );
  }

  Future<List<ColourloversPattern>?> getTopPatterns({
    String lover = '',
    List<ColourloversRequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    ColourloversRequestHexLogic hexLogic = ColourloversRequestHexLogic.AND,
    String keywords = '',
    bool keywordExact = false,
    ColourloversRequestSortBy sortBy = ColourloversRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ColourloversPattern>?, PatternsService>(
      (service) => service.getTopPatterns(
        lover,
        hueRanges.map((hue) => hue.name).join(','),
        hex.join(','),
        hexLogic.name,
        keywords,
        keywordExact ? 1 : 0,
        sortBy.name,
        numResults,
        resultOffset,
        ColourloversRequestFormat.json.name,
      ),
    );
  }

  Future<ColourloversPattern?> getRandomPattern() async {
    return _callClient<ColourloversPattern?, PatternsService>(
      (service) =>
          service.getRandomPattern(ColourloversRequestFormat.json.name),
    );
  }

  Future<ColourloversPattern?> getPattern({required int id}) async {
    return _callClient<ColourloversPattern?, PatternService>(
      (service) => service.getPattern(
        id.toString(),
        ColourloversRequestFormat.json.name,
      ),
    );
  }

  /*
  * Lovers
  */

  Future<List<ColourloversLover>?> getLovers({
    ColourloversRequestOrderBy orderBy = ColourloversRequestOrderBy.dateCreated,
    ColourloversRequestSortBy sortBy = ColourloversRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ColourloversLover>?, LoversService>(
      (service) => service.getLovers(
        orderBy.name,
        sortBy.name,
        numResults,
        resultOffset,
        ColourloversRequestFormat.json.name,
      ),
    );
  }

  Future<List<ColourloversLover>?> getNewLovers({
    ColourloversRequestSortBy sortBy = ColourloversRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ColourloversLover>?, LoversService>(
      (service) => service.getNewLovers(
        sortBy.name,
        numResults,
        resultOffset,
        ColourloversRequestFormat.json.name,
      ),
    );
  }

  Future<List<ColourloversLover>?> getTopLovers({
    ColourloversRequestSortBy sortBy = ColourloversRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ColourloversLover>?, LoversService>(
      (service) => service.getTopLovers(
        sortBy.name,
        numResults,
        resultOffset,
        ColourloversRequestFormat.json.name,
      ),
    );
  }

  Future<ColourloversLover?> getLover({
    required String userName,
    bool withComments = false,
  }) async {
    return _callClient<ColourloversLover?, LoverService>(
      (service) => service.getLover(
        userName,
        withComments ? 1 : 0,
        ColourloversRequestFormat.json.name,
      ),
    );
  }

  /*
  * Stats
  */

  Future<ColourloversStats?> getColorStats() {
    return _callClient<ColourloversStats, StatsService>(
      (service) => service.getColorStats(ColourloversRequestFormat.json.name),
    );
  }

  Future<ColourloversStats?> getPaletteStats() {
    return _callClient<ColourloversStats, StatsService>(
      (service) => service.getPaletteStats(ColourloversRequestFormat.json.name),
    );
  }

  Future<ColourloversStats?> getPatternStats() {
    return _callClient<ColourloversStats, StatsService>(
      (service) => service.getPatternStats(ColourloversRequestFormat.json.name),
    );
  }

  Future<ColourloversStats?> getLoverStats() {
    return _callClient<ColourloversStats, StatsService>(
      (service) => service.getLoverStats(ColourloversRequestFormat.json.name),
    );
  }

  Future<ReturnType?> _callClient<
    ReturnType,
    ServiceType extends ChopperService
  >(Future<Response<ReturnType>> Function(ServiceType service) callback) async {
    final client = ChopperClient(
      baseUrl: Uri.parse('https://www.colourlovers.com/api'),
      services: [
        ColorsService.create(),
        ColorService.create(),
        PalettesService.create(),
        PaletteService.create(),
        PatternsService.create(),
        PatternService.create(),
        LoversService.create(),
        LoverService.create(),
        StatsService.create(),
      ],
    );

    final service = client.getService<ServiceType>();
    final response = await callback(service);
    client.dispose();

    if (response.isSuccessful) {
      return response.body;
    } else {
      final code = response.statusCode;
      final error = response.error;
      throw HttpException('Error $code: $error');
    }
  }
}
