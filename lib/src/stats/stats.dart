import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stats.g.dart';

@JsonSerializable()
@immutable
class ColourloversStats extends Equatable {
  /// Total number of colors, palettes, patterns or lovers
  /// in the COLOURlovers system
  final int? total;

  const ColourloversStats({this.total});

  factory ColourloversStats.fromJson(Map<String, dynamic> json) =>
      _$ColourloversStatsFromJson(json);

  Map<String, dynamic> toJson() => _$ColourloversStatsToJson(this);

  @override
  List<Object?> get props => [total];
}
