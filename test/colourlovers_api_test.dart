import 'package:colourlovers_api/colourlovers_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final client = ColourloversApiClient();

  group('Colors', () {
    test('getColors', () async {
      final colors = await client.getColors(
        numResults: 3,
      );
      expect(colors, isNotNull);
      expect(colors?.length, 3);
      colors?.forEach((element) {
        expect(element.id, isNotNull);
      });
    });
    test('getNewColors', () async {
      final colors = await client.getNewColors(
        numResults: 3,
      );
      expect(colors, isNotNull);
      expect(colors?.length, 3);
      colors?.forEach((element) {
        expect(element.id, isNotNull);
      });
    });
    test('getTopColors', () async {
      final colors = await client.getTopColors(
        numResults: 3,
      );
      expect(colors, isNotNull);
      expect(colors?.length, 3);
      colors?.forEach((element) {
        expect(element.id, isNotNull);
      });
    });
    test('getRandomColor', () async {
      final color = await client.getRandomColor();
      expect(color, isNotNull);
      expect(color?.id, isNotNull);
    });
    test('getColor', () async {
      final color = await client.getColor(hex: '6B4106');
      expect(color, isNotNull);
      expect(color?.id, isNotNull);
    });
  });
  group('Palettes', () {
    test('getPalettes', () async {
      final palettes = await client.getPalettes(
        numResults: 3,
      );
      expect(palettes, isNotNull);
      expect(palettes?.length, 3);
      palettes?.forEach((element) {
        expect(element.id, isNotNull);
      });
    });
    test('getNewPalettes', () async {
      final palettes = await client.getNewPalettes(
        numResults: 3,
      );
      expect(palettes, isNotNull);
      expect(palettes?.length, 3);
      palettes?.forEach((element) {
        expect(element.id, isNotNull);
      });
    });
    test('getTopPalettes', () async {
      final palettes = await client.getTopPalettes(
        numResults: 3,
      );
      expect(palettes, isNotNull);
      expect(palettes?.length, 3);
      palettes?.forEach((element) {
        expect(element.id, isNotNull);
      });
    });
    test('getRandomPalette', () async {
      final palette = await client.getRandomPalette();
      expect(palette, isNotNull);
      expect(palette?.id, isNotNull);
    });
    test('getPalette', () async {
      final palette = await client.getPalette(
        id: 113451,
        showPaletteWidths: true,
      );
      expect(palette, isNotNull);
      expect(palette?.id, isNotNull);
    });
  });
  group('Patterns', () {
    test('getPatterns', () async {
      final patterns = await client.getPatterns(
        numResults: 3,
      );
      expect(patterns, isNotNull);
      expect(patterns?.length, 3);
      patterns?.forEach((element) {
        expect(element.id, isNotNull);
      });
    });
    test('getNewPatterns', () async {
      final patterns = await client.getNewPatterns(
        numResults: 3,
      );
      expect(patterns, isNotNull);
      expect(patterns?.length, 3);
      patterns?.forEach((element) {
        expect(element.id, isNotNull);
      });
    });
    test('getTopPatterns', () async {
      final patterns = await client.getTopPatterns(
        numResults: 3,
      );
      expect(patterns, isNotNull);
      expect(patterns?.length, 3);
      patterns?.forEach((element) {
        expect(element.id, isNotNull);
      });
    });
    test('getRandomPattern', () async {
      final pattern = await client.getRandomPattern();
      expect(pattern, isNotNull);
      expect(pattern?.id, isNotNull);
    });
    test('getPattern', () async {
      final pattern = await client.getPattern(id: 1451);
      expect(pattern, isNotNull);
      expect(pattern?.id, isNotNull);
    });
  });
  group('Lovers', () {
    test('getLovers', () async {
      final lovers = await client.getLovers(
        numResults: 3,
      );
      expect(lovers, isNotNull);
      expect(lovers?.length, 3);
      lovers?.forEach((element) {
        expect(element.userName, isNotNull);
      });
    });
    test('getNewLovers', () async {
      final lovers = await client.getNewLovers(
        numResults: 3,
      );
      expect(lovers, isNotNull);
      expect(lovers?.length, 3);
      lovers?.forEach((element) {
        expect(element.userName, isNotNull);
      });
    });
    test('getTopLovers', () async {
      final lovers = await client.getTopLovers(
        numResults: 3,
      );
      expect(lovers, isNotNull);
      expect(lovers?.length, 3);
      lovers?.forEach((element) {
        expect(element.userName, isNotNull);
      });
    });
    test('getLover', () async {
      final lover = await client.getLover(
        userName: 'COLOURlover',
        withComments: true,
      );
      expect(lover, isNotNull);
      expect(lover?.userName, isNotNull);
    });
  });
  group('Stats', () {
    test('getColorStats', () async {
      final stats = await client.getColorStats();
      expect(stats, isNotNull);
      expect(stats?.total, isNotNull);
    });
    test('getPaletteStats', () async {
      final stats = await client.getPaletteStats();
      expect(stats, isNotNull);
      expect(stats?.total, isNotNull);
    });
    test('getPatternStats', () async {
      final stats = await client.getPatternStats();
      expect(stats, isNotNull);
      expect(stats?.total, isNotNull);
    });
    test('getLoverStats', () async {
      final stats = await client.getLoverStats();
      expect(stats, isNotNull);
      expect(stats?.total, isNotNull);
    });
  });
}
