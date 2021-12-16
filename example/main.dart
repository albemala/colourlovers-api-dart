// ignore_for_file: avoid_print

import 'package:colourlovers_api/colourlovers_api.dart';

Future<void> main() async {
  final client = ClClient();

  print("----");
  print("---- Colors ----");
  print("----");

  List<ClColor>? colors = await client.getColors(
    numResults: 3,
  );
  colors?.forEach(print);

  print("----");

  List<ClColor>? newColors = await client.getNewColors(
    numResults: 3,
  );
  newColors?.forEach(print);

  print("----");

  List<ClColor>? topColors = await client.getTopColors(
    numResults: 3,
  );
  topColors?.forEach(print);

  print("----");

  ClColor? randomColor = await client.getRandomColor();
  print(randomColor);

  print("----");

  ClColor? color = await client.getColor(hex: "6B4106");
  print(color);

  print("----");
  print("---- Palettes ----");
  print("----");

  List<ClPalette>? palettes = await client.getPalettes(
    numResults: 3,
  );
  palettes?.forEach(print);

  print("----");

  List<ClPalette>? newPalettes = await client.getNewPalettes(
    numResults: 3,
  );
  newPalettes?.forEach(print);

  print("----");

  List<ClPalette>? topPalettes = await client.getTopPalettes(
    numResults: 3,
  );
  topPalettes?.forEach(print);

  print("----");

  ClPalette? randomPalette = await client.getRandomPalette();
  print(randomPalette);

  print("----");

  ClPalette? palette = await client.getPalette(
    id: 113451,
    showPaletteWidths: true,
  );
  print(palette);

  print("----");
  print("---- Patterns ----");
  print("----");

  List<ClPattern>? patterns = await client.getPatterns(
    numResults: 3,
  );
  patterns?.forEach(print);

  print("----");

  List<ClPattern>? newPatterns = await client.getNewPatterns(
    numResults: 3,
  );
  newPatterns?.forEach(print);

  print("----");

  List<ClPattern>? topPatterns = await client.getTopPatterns(
    numResults: 3,
  );
  topPatterns?.forEach(print);

  print("----");

  ClPattern? randomPattern = await client.getRandomPattern();
  print(randomPattern);

  print("----");

  ClPattern? pattern = await client.getPattern(id: 1451);
  print(pattern);

  print("----");
  print("---- Lovers ----");
  print("----");

  List<ClLover>? lovers = await client.getLovers(
    numResults: 3,
  );
  lovers?.forEach(print);

  print("----");

  List<ClLover>? newLovers = await client.getNewLovers(
    numResults: 3,
  );
  newLovers?.forEach(print);

  print("----");

  List<ClLover>? topLovers = await client.getTopLovers(
    numResults: 3,
  );
  topLovers?.forEach(print);

  print("----");

  ClLover? lover = await client.getLover(
    userName: "COLOURlover",
    withComments: true,
  );
  print(lover);

  print("----");
  print("---- Stats ----");
  print("----");

  ClStats? colorStats = await client.getColorStats();
  print(colorStats);

  print("----");

  ClStats? paletteStats = await client.getPaletteStats();
  print(paletteStats);

  print("----");

  ClStats? patternStats = await client.getPatternStats();
  print(patternStats);

  print("----");

  ClStats? loverStats = await client.getLoverStats();
  print(loverStats);
}
