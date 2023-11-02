import 'package:json_annotation/json_annotation.dart';

part 'stats.g.dart';

@JsonSerializable()
class ColourloversStats {
  /// Total number of colors, palettes, patterns or lovers
  /// in the COLOURlovers system
  int? total;

  ColourloversStats({
    this.total,
  });

  factory ColourloversStats.fromJson(Map<String, dynamic> json) =>
      _$ColourloversStatsFromJson(json);

  Map<String, dynamic> toJson() => _$ColourloversStatsToJson(this);

  @override
  String toString() {
    return 'ColourloversStats{total: $total}';
  }
}
