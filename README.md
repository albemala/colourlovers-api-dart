# colourlovers_api

[![Pub](https://img.shields.io/pub/v/colourlovers_api)](https://pub.dev/packages/colourlovers_api)

A comprehensive Flutter wrapper for the [COLOURlovers.com API](https://www.colourlovers.com/api), providing access to colors, palettes, patterns, users, and statistics from the popular color community platform.

Perfect for building design apps, color palette generators, creative tools, or any application that needs access to curated color data and community-driven design resources.

## Features

- **🎨 Colors**: Search, filter, and retrieve individual colors with comprehensive metadata
- **🎭 Palettes**: Access curated color palettes with advanced filtering options
- **🖼️ Patterns**: Browse and retrieve decorative patterns with color information
- **👥 Lovers**: Get user profiles and community data from COLOURlovers members
- **📊 Stats**: Access platform statistics for colors, palettes, patterns, and users
- **🔍 Advanced Filtering**: Filter by hue ranges, brightness, keywords, creators, and more
- **⚡ Async/Await**: Modern Dart async patterns for smooth integration
- **🛡️ Type Safety**: Fully typed models with JSON serialization
- **🚫 Zero Dependencies**: Lightweight with minimal external dependencies

## Usage

### Basic Setup

```dart
import 'package:colourlovers_api/colourlovers_api.dart';

final client = ColourloversApiClient();
```

### Working with Colors

```dart
// Get recent colors with filtering
final colors = await client.getColors(
  numResults: 10,
  hueMin: 0,
  hueMax: 60, // Orange/red range
  brightnessMin: 50,
  brightnessMax: 90,
);

// Get a specific color by hex value
final color = await client.getColor(hex: '6B4106');
print('Color: ${color?.title} - #${color?.hex}');

// Get random color for inspiration
final randomColor = await client.getRandomColor();
print('Random color: ${randomColor?.title}');

// Get top-rated colors
final topColors = await client.getTopColors(numResults: 5);
```

### Working with Palettes

```dart
// Get palettes with specific colors
final palettes = await client.getPalettes(
  hex: ['FF0000', '00FF00', '0000FF'], // Red, green, blue
  hexLogic: ColourloversRequestHexLogic.AND,
  showPaletteWidths: true,
  numResults: 10,
);

// Get a specific palette by ID
final palette = await client.getPalette(
  id: 113451,
  showPaletteWidths: true,
);
print('Palette: ${palette?.title}');
print('Colors: ${palette?.colors?.join(', ')}');

// Get trending palettes
final newPalettes = await client.getNewPalettes(numResults: 5);
```

### Working with Patterns

```dart
// Search patterns by keyword
final patterns = await client.getPatterns(
  keywords: 'geometric',
  keywordExact: false,
  numResults: 10,
);

// Get a specific pattern
final pattern = await client.getPattern(id: 1451);
print('Pattern: ${pattern?.title}');
print('URL: ${pattern?.url}');

// Get random pattern
final randomPattern = await client.getRandomPattern();
```

### Working with Community Data

```dart
// Get community members (lovers)
final lovers = await client.getLovers(
  orderBy: ColourloversRequestOrderBy.dateCreated,
  numResults: 10,
);

// Get specific user profile
final lover = await client.getLover(
  userName: 'COLOURlover',
  withComments: true,
);
print('User: ${lover?.userName}');
print('Colors created: ${lover?.numColors}');
print('Palettes created: ${lover?.numPalettes}');
```

### Getting Statistics

```dart
// Get platform statistics
final colorStats = await client.getColorStats();
print('Total colors: ${colorStats?.total}');

final paletteStats = await client.getPaletteStats();
print('Total palettes: ${paletteStats?.total}');

final patternStats = await client.getPatternStats();
print('Total patterns: ${patternStats?.total}');

final loverStats = await client.getLoverStats();
print('Total users: ${loverStats?.total}');
```

### Advanced Filtering

```dart
// Complex color search with multiple filters
final filteredColors = await client.getColors(
  lover: 'username', // Colors by specific user
  hueMin: 120, // Green range
  hueMax: 180,
  brightnessMin: 30,
  brightnessMax: 70,
  keywords: 'nature forest',
  keywordExact: false,
  orderBy: ColourloversRequestOrderBy.score,
  sortBy: ColourloversRequestSortBy.DESC,
  numResults: 20,
  resultOffset: 0,
);

// Palette search with hue ranges
final hueFilteredPalettes = await client.getPalettes(
  hueRanges: [
    ColourloversRequestHueRange.red,
    ColourloversRequestHueRange.orange,
  ],
  keywords: 'sunset warm',
  orderBy: ColourloversRequestOrderBy.score,
  numResults: 15,
);
```

### Error Handling

```dart
try {
  final colors = await client.getColors();
  // Process colors
} catch (e) {
  if (e is HttpException) {
    print('API Error: ${e.message}');
  } else {
    print('Unexpected error: $e');
  }
}
```

### Working with Color Data

```dart
final color = await client.getColor(hex: 'FF5733');
if (color != null) {
  print('Title: ${color.title}');
  print('Hex: #${color.hex}');
  print('RGB: ${color.rgb?.red}, ${color.rgb?.green}, ${color.rgb?.blue}');
  print('HSV: ${color.hsv?.hue}°, ${color.hsv?.saturation}%, ${color.hsv?.value}%');
  print('Views: ${color.numViews}');
  print('Hearts: ${color.numHearts}');
  print('Creator: ${color.userName}');
  print('Created: ${color.dateCreated}');
}
```

## Advanced Usage

See the [example app](https://github.com/albemala/colourlovers-api-dart/tree/main/example) for a complete usage example demonstrating all API endpoints and filtering options.

## API Reference

The package provides access to all COLOURlovers API endpoints:

- **Colors**: `getColors()`, `getNewColors()`, `getTopColors()`, `getRandomColor()`, `getColor()`
- **Palettes**: `getPalettes()`, `getNewPalettes()`, `getTopPalettes()`, `getRandomPalette()`, `getPalette()`
- **Patterns**: `getPatterns()`, `getNewPatterns()`, `getTopPatterns()`, `getRandomPattern()`, `getPattern()`
- **Lovers**: `getLovers()`, `getNewLovers()`, `getTopLovers()`, `getLover()`
- **Stats**: `getColorStats()`, `getPaletteStats()`, `getPatternStats()`, `getLoverStats()`

All methods support comprehensive filtering options including hue ranges, brightness levels, keywords, sorting, and pagination.

## Support this project

- [GitHub Sponsor](https://github.com/sponsors/albemala)
- [Buy Me A Coffee](https://www.buymeacoffee.com/albemala)

## Other projects

[All my projects](https://projects.albemala.me/)

## Credits

Created by [@albemala](https://github.com/albemala) ([Twitter](https://twitter.com/albemala))