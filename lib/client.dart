import 'package:chopper/chopper.dart';
import 'package:colourlovers_api/color.dart';
import 'package:colourlovers_api/colors_service.dart';
import 'package:colourlovers_api/palette.dart';
import 'package:colourlovers_api/palettes_service.dart';
import 'package:colourlovers_api/parameters.dart';
import 'package:colourlovers_api/pattern.dart';
import 'package:colourlovers_api/patterns_service.dart';

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
    RequestOrderBy orderBy = RequestOrderBy.dateCreated,
    RequestSortBy sortBy = RequestSortBy.ASC,
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
        RequestFormat.json.name,
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
    RequestSortBy sortBy = RequestSortBy.ASC,
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
        RequestFormat.json.name,
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
    RequestSortBy sortBy = RequestSortBy.ASC,
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
        RequestFormat.json.name,
      ),
    );
  }

  Future<ClColor?> getRandomColor() async {
    return _callClient<ClColor?, ColorsService>(
      (service) => service.getRandomColor(
        RequestFormat.json.name,
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
        RequestFormat.json.name,
      ),
    );
  }

  /*
  * Palettes
  */

  Future<List<ClPalette>?> getPalettes({
    String lover = "",
    List<RequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    RequestHexLogic hexLogic = RequestHexLogic.AND,
    String keywords = "",
    bool keywordExact = false,
    bool showPaletteWidths = false,
    RequestOrderBy orderBy = RequestOrderBy.dateCreated,
    RequestSortBy sortBy = RequestSortBy.ASC,
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
        RequestFormat.json.name,
      ),
    );
  }

  Future<List<ClPalette>?> getNewPalettes({
    String lover = "",
    List<RequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    RequestHexLogic hexLogic = RequestHexLogic.AND,
    String keywords = "",
    bool keywordExact = false,
    bool showPaletteWidths = false,
    RequestSortBy sortBy = RequestSortBy.ASC,
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
        RequestFormat.json.name,
      ),
    );
  }

  Future<List<ClPalette>?> getTopPalettes({
    String lover = "",
    List<RequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    RequestHexLogic hexLogic = RequestHexLogic.AND,
    String keywords = "",
    bool keywordExact = false,
    bool showPaletteWidths = false,
    RequestSortBy sortBy = RequestSortBy.ASC,
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
        RequestFormat.json.name,
      ),
    );
  }

  Future<ClPalette?> getRandomPalette() async {
    return _callClient<ClPalette?, PalettesService>(
      (service) => service.getRandomPalette(
        RequestFormat.json.name,
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
        RequestFormat.json.name,
      ),
    );
  }

  /*
  * Patterns
  */

  Future<List<ClPattern>?> getPatterns({
    String lover = "",
    List<RequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    RequestHexLogic hexLogic = RequestHexLogic.AND,
    String keywords = "",
    bool keywordExact = false,
    RequestOrderBy orderBy = RequestOrderBy.dateCreated,
    RequestSortBy sortBy = RequestSortBy.ASC,
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
        RequestFormat.json.name,
      ),
    );
  }

  Future<List<ClPattern>?> getNewPatterns({
    String lover = "",
    List<RequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    RequestHexLogic hexLogic = RequestHexLogic.AND,
    String keywords = "",
    bool keywordExact = false,
    RequestSortBy sortBy = RequestSortBy.ASC,
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
        RequestFormat.json.name,
      ),
    );
  }

  Future<List<ClPattern>?> getTopPatterns({
    String lover = "",
    List<RequestHueRange> hueRanges = const [],
    List<String> hex = const [],
    RequestHexLogic hexLogic = RequestHexLogic.AND,
    String keywords = "",
    bool keywordExact = false,
    RequestSortBy sortBy = RequestSortBy.ASC,
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
        RequestFormat.json.name,
      ),
    );
  }

  Future<ClPattern?> getRandomPattern() async {
    return _callClient<ClPattern?, PatternsService>(
      (service) => service.getRandomPattern(
        RequestFormat.json.name,
      ),
    );
  }

  Future<ClPattern?> getPattern({
    required int id,
  }) async {
    return _callClient<ClPattern?, PatternService>(
      (service) => service.getPattern(
        id.toString(),
        RequestFormat.json.name,
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
    print("Error: $code $error");
    return null;
  }
}
