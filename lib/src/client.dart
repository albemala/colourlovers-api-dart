import 'dart:io';

import 'package:chopper/chopper.dart';

import 'color.dart';
import 'colors_service.dart';
import 'lover.dart';
import 'lovers_service.dart';
import 'palette.dart';
import 'palettes_service.dart';
import 'parameters.dart';
import 'pattern.dart';
import 'patterns_service.dart';
import 'stats.dart';
import 'stats_service.dart';

class ClClient {
  /*
  * Colors
  */

  Future<List<ClColor>?> getColors({
    String lover = "",
    int hueMin = 0,
    int hueMax = 359,
    int brightnessMin = 0,
    int brightnessMax = 99,
    String keywords = "",
    bool keywordExact = false,
    ClRequestOrderBy orderBy = ClRequestOrderBy.dateCreated,
    ClRequestSortBy sortBy = ClRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    assert(hueMin >= 0 && hueMin <= 359);
    assert(hueMin < hueMax);

    assert(brightnessMin >= 0 && brightnessMax <= 99);
    assert(brightnessMin < brightnessMax);

    return _callClient<List<ClColor>?, ColorsService>(
      (service) => service.getColors(
        lover,
        "$hueMin,$hueMax",
        "$brightnessMin,$brightnessMax",
        keywords,
        keywordExact ? 1 : 0,
        orderBy.name,
        sortBy.name,
        numResults,
        resultOffset,
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<List<ClColor>?> getNewColors({
    String lover = "",
    int hueMin = 0,
    int hueMax = 359,
    int brightnessMin = 0,
    int brightnessMax = 99,
    String keywords = "",
    bool keywordExact = false,
    ClRequestSortBy sortBy = ClRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ClColor>?, ColorsService>(
      (service) => service.getNewColors(
        lover,
        "$hueMin,$hueMax",
        "$brightnessMin,$brightnessMax",
        keywords,
        keywordExact ? 1 : 0,
        sortBy.name,
        numResults,
        resultOffset,
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<List<ClColor>?> getTopColors({
    String lover = "",
    int hueMin = 0,
    int hueMax = 359,
    int brightnessMin = 0,
    int brightnessMax = 99,
    String keywords = "",
    bool keywordExact = false,
    ClRequestSortBy sortBy = ClRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ClColor>?, ColorsService>(
      (service) => service.getTopColors(
        lover,
        "$hueMin,$hueMax",
        "$brightnessMin,$brightnessMax",
        keywords,
        keywordExact ? 1 : 0,
        sortBy.name,
        numResults,
        resultOffset,
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<ClColor?> getRandomColor() async {
    return _callClient<ClColor?, ColorsService>(
      (service) => service.getRandomColor(
        ClRequestFormat.json.name,
      ),
    );
  }

  ///
  /// [hex] is any 6-char hex value (a hex color representation).
  Future<ClColor?> getColor({
    required String hex,
  }) async {
    assert(hex.length == 6);
    assert(RegExp(r"^[0-9a-fA-F]+$").hasMatch(hex));
    return _callClient<ClColor?, ColorService>(
      (service) => service.getColor(
        hex,
        ClRequestFormat.json.name,
      ),
    );
  }

  /*
  * Palettes
  */

  Future<List<ClPalette>?> getPalettes({
    String lover = "",
    List<ClRequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    ClRequestHexLogic hexLogic = ClRequestHexLogic.AND,
    String keywords = "",
    bool keywordExact = false,
    bool showPaletteWidths = false,
    ClRequestOrderBy orderBy = ClRequestOrderBy.dateCreated,
    ClRequestSortBy sortBy = ClRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ClPalette>?, PalettesService>(
      (service) => service.getPalettes(
        lover,
        hueRanges.map((hue) => hue.name).join(","),
        hex.join(","),
        hexLogic.name,
        showPaletteWidths ? 1 : 0,
        keywords,
        keywordExact ? 1 : 0,
        orderBy.name,
        sortBy.name,
        numResults,
        resultOffset,
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<List<ClPalette>?> getNewPalettes({
    String lover = "",
    List<ClRequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    ClRequestHexLogic hexLogic = ClRequestHexLogic.AND,
    String keywords = "",
    bool keywordExact = false,
    bool showPaletteWidths = false,
    ClRequestSortBy sortBy = ClRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ClPalette>?, PalettesService>(
      (service) => service.getNewPalettes(
        lover,
        hueRanges.map((hue) => hue.name).join(","),
        hex.join(","),
        hexLogic.name,
        showPaletteWidths ? 1 : 0,
        keywords,
        keywordExact ? 1 : 0,
        sortBy.name,
        numResults,
        resultOffset,
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<List<ClPalette>?> getTopPalettes({
    String lover = "",
    List<ClRequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    ClRequestHexLogic hexLogic = ClRequestHexLogic.AND,
    String keywords = "",
    bool keywordExact = false,
    bool showPaletteWidths = false,
    ClRequestSortBy sortBy = ClRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ClPalette>?, PalettesService>(
      (service) => service.getTopPalettes(
        lover,
        hueRanges.map((hue) => hue.name).join(","),
        hex.join(","),
        hexLogic.name,
        showPaletteWidths ? 1 : 0,
        keywords,
        keywordExact ? 1 : 0,
        sortBy.name,
        numResults,
        resultOffset,
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<ClPalette?> getRandomPalette() async {
    return _callClient<ClPalette?, PalettesService>(
      (service) => service.getRandomPalette(
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<ClPalette?> getPalette({
    required int id,
    bool showPaletteWidths = false,
  }) async {
    return _callClient<ClPalette?, PaletteService>(
      (service) => service.getPalette(
        id.toString(),
        showPaletteWidths ? 1 : 0,
        ClRequestFormat.json.name,
      ),
    );
  }

  /*
  * Patterns
  */

  Future<List<ClPattern>?> getPatterns({
    String lover = "",
    List<ClRequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    ClRequestHexLogic hexLogic = ClRequestHexLogic.AND,
    String keywords = "",
    bool keywordExact = false,
    ClRequestOrderBy orderBy = ClRequestOrderBy.dateCreated,
    ClRequestSortBy sortBy = ClRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ClPattern>?, PatternsService>(
      (service) => service.getPatterns(
        lover,
        hueRanges.map((hue) => hue.name).join(","),
        hex.join(","),
        hexLogic.name,
        keywords,
        keywordExact ? 1 : 0,
        orderBy.name,
        sortBy.name,
        numResults,
        resultOffset,
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<List<ClPattern>?> getNewPatterns({
    String lover = "",
    List<ClRequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    ClRequestHexLogic hexLogic = ClRequestHexLogic.AND,
    String keywords = "",
    bool keywordExact = false,
    ClRequestSortBy sortBy = ClRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ClPattern>?, PatternsService>(
      (service) => service.getNewPatterns(
        lover,
        hueRanges.map((hue) => hue.name).join(","),
        hex.join(","),
        hexLogic.name,
        keywords,
        keywordExact ? 1 : 0,
        sortBy.name,
        numResults,
        resultOffset,
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<List<ClPattern>?> getTopPatterns({
    String lover = "",
    List<ClRequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    ClRequestHexLogic hexLogic = ClRequestHexLogic.AND,
    String keywords = "",
    bool keywordExact = false,
    ClRequestSortBy sortBy = ClRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ClPattern>?, PatternsService>(
      (service) => service.getTopPatterns(
        lover,
        hueRanges.map((hue) => hue.name).join(","),
        hex.join(","),
        hexLogic.name,
        keywords,
        keywordExact ? 1 : 0,
        sortBy.name,
        numResults,
        resultOffset,
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<ClPattern?> getRandomPattern() async {
    return _callClient<ClPattern?, PatternsService>(
      (service) => service.getRandomPattern(
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<ClPattern?> getPattern({
    required int id,
  }) async {
    return _callClient<ClPattern?, PatternService>(
      (service) => service.getPattern(
        id.toString(),
        ClRequestFormat.json.name,
      ),
    );
  }

  /*
  * Lovers
  */

  Future<List<ClLover>?> getLovers({
    ClRequestOrderBy orderBy = ClRequestOrderBy.dateCreated,
    ClRequestSortBy sortBy = ClRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ClLover>?, LoversService>(
      (service) => service.getLovers(
        orderBy.name,
        sortBy.name,
        numResults,
        resultOffset,
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<List<ClLover>?> getNewLovers({
    ClRequestSortBy sortBy = ClRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ClLover>?, LoversService>(
      (service) => service.getNewLovers(
        sortBy.name,
        numResults,
        resultOffset,
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<List<ClLover>?> getTopLovers({
    ClRequestSortBy sortBy = ClRequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ClLover>?, LoversService>(
      (service) => service.getTopLovers(
        sortBy.name,
        numResults,
        resultOffset,
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<ClLover?> getLover({
    required String userName,
    bool withComments = false,
  }) async {
    return _callClient<ClLover?, LoverService>(
      (service) => service.getLover(
        userName,
        withComments ? 1 : 0,
        ClRequestFormat.json.name,
      ),
    );
  }

  /*
  * Stats
  */

  Future<ClStats?> getColorStats() {
    return _callClient<ClStats, StatsService>(
      (service) => service.getColorStats(
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<ClStats?> getPaletteStats() {
    return _callClient<ClStats, StatsService>(
      (service) => service.getPaletteStats(
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<ClStats?> getPatternStats() {
    return _callClient<ClStats, StatsService>(
      (service) => service.getPatternStats(
        ClRequestFormat.json.name,
      ),
    );
  }

  Future<ClStats?> getLoverStats() {
    return _callClient<ClStats, StatsService>(
      (service) => service.getLoverStats(
        ClRequestFormat.json.name,
      ),
    );
  }
}

Future<ReturnType?> _callClient<ReturnType, ServiceType extends ChopperService>(
  Future<Response> Function(ServiceType service) callback,
) async {
  final chopper = ChopperClient(
    baseUrl: "http://www.colourlovers.com/api",
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
  final service = chopper.getService<ServiceType>();
  final response = await callback(service);
  chopper.dispose();

  if (response.isSuccessful) {
    return response.body;
  } else {
    final code = response.statusCode;
    final error = response.error;
    throw HttpException("Error $code: $error");
  }
}
