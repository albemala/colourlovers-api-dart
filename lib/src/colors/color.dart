import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'color.g.dart';

@JsonSerializable()
@immutable
class ColourloversColor extends Equatable {
  /// Unique id for this Color
  final int? id;

  /// Title / Name of the Color
  final String? title;

  /// Username of the Color's creator
  final String? userName;

  /// Number of views this Color has received
  final int? numViews;

  /// Number of votes this Color has received
  final int? numVotes;

  /// Number of comments this Color has received
  final int? numComments;

  /// Number of hearts this Color has
  final double? numHearts;

  /// This Color's rank on COLOURlovers.com
  final int? rank;

  /// Date this Color was created
  final DateTime? dateCreated;

  /// This Color's hex value
  final String? hex;

  /// RGB breakdown of this Color
  final Rgb? rgb;

  /// HSV breakdown of this color
  final Hsv? hsv;

  /// This Color's description
  final String? description;

  /// This Color's COLOURlovers.com URL
  final String? url;

  /// Link to a png version of this Color
  final String? imageUrl;

  /// Link to a COLOURlovers.com badge for this Color
  final String? badgeUrl;

  /// This Color's COLOURlovers.com API URL
  final String? apiUrl;

  const ColourloversColor({
    this.id,
    this.title,
    this.userName,
    this.numViews,
    this.numVotes,
    this.numComments,
    this.numHearts,
    this.rank,
    this.dateCreated,
    this.hex,
    this.rgb,
    this.hsv,
    this.description,
    this.url,
    this.imageUrl,
    this.badgeUrl,
    this.apiUrl,
  });

  factory ColourloversColor.fromJson(Map<String, dynamic> json) =>
      _$ColourloversColorFromJson(json);

  Map<String, dynamic> toJson() => _$ColourloversColorToJson(this);

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
    hex,
    rgb,
    hsv,
    description,
    url,
    imageUrl,
    badgeUrl,
    apiUrl,
  ];
}

@JsonSerializable()
@immutable
class Hsv extends Equatable {
  final int? hue;
  final int? saturation;
  final int? value;

  const Hsv({this.hue, this.saturation, this.value});

  factory Hsv.fromJson(Map<String, dynamic> json) => _$HsvFromJson(json);

  Map<String, dynamic> toJson() => _$HsvToJson(this);

  @override
  List<Object?> get props => [hue, saturation, value];
}

@JsonSerializable()
@immutable
class Rgb extends Equatable {
  final int? red;
  final int? green;
  final int? blue;

  const Rgb({this.red, this.green, this.blue});

  factory Rgb.fromJson(Map<String, dynamic> json) => _$RgbFromJson(json);

  Map<String, dynamic> toJson() => _$RgbToJson(this);

  @override
  List<Object?> get props => [red, green, blue];
}
