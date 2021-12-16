library colourlovers_api;

import 'package:colourlovers_api/client.dart';

Future<void> main() async {
  final client = ClClient();

  print("----");
  print("---- Colors ----");
  print("----");

  var colors = await client.getColors(
    numResults: 3,
  );
  colors?.forEach(print);

  print("----");

  var newColors = await client.getNewColors(
    numResults: 3,
  );
  newColors?.forEach(print);

  print("----");

  var topColors = await client.getTopColors(
    numResults: 3,
  );
  topColors?.forEach(print);

  print("----");

  var randomColor = await client.getRandomColor();
  print(randomColor);

  print("----");

  var color = await client.getColor(hex: "6B4106");
  print(color);

  print("----");
  print("---- Palettes ----");
  print("----");

  var palettes = await client.getPalettes(
    numResults: 3,
  );
  palettes?.forEach(print);

  print("----");

  var newPalettes = await client.getNewPalettes(
    numResults: 3,
  );
  newPalettes?.forEach(print);

  print("----");

  var topPalettes = await client.getTopPalettes(
    numResults: 3,
  );
  topPalettes?.forEach(print);

  print("----");

  var randomPalette = await client.getRandomPalette();
  print(randomPalette);

  print("----");

  var palette = await client.getPalette(
    id: 113451,
    showPaletteWidths: true,
  );
  print(palette);

  print("----");
  print("---- Patterns ----");
  print("----");

  var patterns = await client.getPatterns(
    numResults: 3,
  );
  patterns?.forEach(print);

  print("----");

  var newPatterns = await client.getNewPatterns(
    numResults: 3,
  );
  newPatterns?.forEach(print);

  print("----");

  var topPatterns = await client.getTopPatterns(
    numResults: 3,
  );
  topPatterns?.forEach(print);

  print("----");

  var randomPattern = await client.getRandomPattern();
  print(randomPattern);

  print("----");

  var pattern = await client.getPattern(id: 1451);
  print(pattern);

  print("----");
  print("---- Lovers ----");
  print("----");

  var lovers = await client.getLovers(
    numResults: 3,
  );
  lovers?.forEach(print);

  print("----");

  var newLovers = await client.getNewLovers(
    numResults: 3,
  );
  newLovers?.forEach(print);

  print("----");

  var topLovers = await client.getTopLovers(
    numResults: 3,
  );
  topLovers?.forEach(print);

  print("----");

  var lover = await client.getLover(
    userName: "COLOURlover",
    withComments: true,
  );
  print(lover);
}
