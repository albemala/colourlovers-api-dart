// ignore_for_file: avoid_print

import 'package:colourlovers_api/colourlovers_api.dart';

Future<void> main() async {
  final client = ColourloversApiClient();

  print('----');
  print('---- Colors ----');
  print('----');

  final colors = await client.getColors(
    numResults: 3,
  );
  colors?.forEach(print);

  print('----');

  final newColors = await client.getNewColors(
    numResults: 3,
  );
  newColors?.forEach(print);

  print('----');

  final topColors = await client.getTopColors(
    numResults: 3,
  );
  topColors?.forEach(print);

  print('----');

  final randomColor = await client.getRandomColor();
  print(randomColor);

  print('----');

  final color = await client.getColor(hex: '6B4106');
  print(color);

  print('----');
  print('---- Palettes ----');
  print('----');

  final palettes = await client.getPalettes(
    numResults: 3,
  );
  palettes?.forEach(print);

  print('----');

  final newPalettes = await client.getNewPalettes(
    numResults: 3,
  );
  newPalettes?.forEach(print);

  print('----');

  final topPalettes = await client.getTopPalettes(
    numResults: 3,
  );
  topPalettes?.forEach(print);

  print('----');

  final randomPalette = await client.getRandomPalette();
  print(randomPalette);

  print('----');

  final palette = await client.getPalette(
    id: 113451,
    showPaletteWidths: true,
  );
  print(palette);

  print('----');
  print('---- Patterns ----');
  print('----');

  final patterns = await client.getPatterns(
    numResults: 3,
  );
  patterns?.forEach(print);

  print('----');

  final newPatterns = await client.getNewPatterns(
    numResults: 3,
  );
  newPatterns?.forEach(print);

  print('----');

  final topPatterns = await client.getTopPatterns(
    numResults: 3,
  );
  topPatterns?.forEach(print);

  print('----');

  final randomPattern = await client.getRandomPattern();
  print(randomPattern);

  print('----');

  final pattern = await client.getPattern(id: 1451);
  print(pattern);

  print('----');
  print('---- Lovers ----');
  print('----');

  final lovers = await client.getLovers(
    numResults: 3,
  );
  lovers?.forEach(print);

  print('----');

  final newLovers = await client.getNewLovers(
    numResults: 3,
  );
  newLovers?.forEach(print);

  print('----');

  final topLovers = await client.getTopLovers(
    numResults: 3,
  );
  topLovers?.forEach(print);

  print('----');

  final lover = await client.getLover(
    userName: 'COLOURlover',
    withComments: true,
  );
  print(lover);

  print('----');
  print('---- Stats ----');
  print('----');

  final colorStats = await client.getColorStats();
  print(colorStats);

  print('----');

  final paletteStats = await client.getPaletteStats();
  print(paletteStats);

  print('----');

  final patternStats = await client.getPatternStats();
  print(patternStats);

  print('----');

  final loverStats = await client.getLoverStats();
  print(loverStats);
}
