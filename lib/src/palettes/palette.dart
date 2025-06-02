import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'palette.g.dart';

@JsonSerializable()
@immutable
class ColourloversPalette extends Equatable {
  /// Unique id for this Palette
  final int? id;

  /// Title / Name of the Palette
  final String? title;

  /// Username of the Palette's creator
  final String? userName;

  /// Number of views this Palette has received
  final int? numViews;

  /// Number of votes this Palette has received
  final int? numVotes;

  /// Number of comments this Palette has received
  final int? numComments;

  /// Number of hearts this Palette has
  final double? numHearts;

  /// This Palette's rank on COLOURlovers.com
  final int? rank;

  /// Date this Palette was created
  final DateTime? dateCreated;

  /// List of Colors within this Palette
  final List<String>? colors;

  /// This Palette's Color's widths. Ranges from 0.0 to 1.0
  final List<double>? colorWidths;

  /// This Palette's description
  final String? description;

  /// This Palette's COLOURlovers.com URL
  final String? url;

  /// Link to a png version of this Palette
  final String? imageUrl;

  /// Link to a COLOURlovers.com badge for this Palette
  final String? badgeUrl;

  /// This Palette's COLOURlovers.com API URL
  final String? apiUrl;

  const ColourloversPalette({
    this.id,
    this.title,
    this.userName,
    this.numViews,
    this.numVotes,
    this.numComments,
    this.numHearts,
    this.rank,
    this.dateCreated,
    this.colors,
    this.colorWidths,
    this.description,
    this.url,
    this.imageUrl,
    this.badgeUrl,
    this.apiUrl,
  });

  factory ColourloversPalette.fromJson(Map<String, dynamic> json) =>
      _$ColourloversPaletteFromJson(json);

  Map<String, dynamic> toJson() => _$ColourloversPaletteToJson(this);

  @override
  List<Object?> get props => [
    id,
    title,
    userName,
    numViews,
    numVotes,
    numComments,
    numHearts,
    rank,
    dateCreated,
    colors,
    colorWidths,
    description,
    url,
    imageUrl,
    badgeUrl,
    apiUrl,
  ];
}
