import 'package:json_annotation/json_annotation.dart';

part 'stats.g.dart';

@JsonSerializable()
class ClStats {
  int? total;

  ClStats({
    this.total,
  });

  factory ClStats.fromJson(Map<String, dynamic> json) => _$ClStatsFromJson(json);

  Map<String, dynamic> toJson() => _$ClStatsToJson(this);

  @override
  String toString() {
    return 'ClStats{total: $total}';
  }
}
