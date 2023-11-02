// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColourloversColor _$ColourloversColorFromJson(Map<String, dynamic> json) =>
    ColourloversColor(
      id: json['id'] as int?,
      title: json['title'] as String?,
      userName: json['userName'] as String?,
      numViews: json['numViews'] as int?,
      numVotes: json['numVotes'] as int?,
      numComments: json['numComments'] as int?,
      numHearts: (json['numHearts'] as num?)?.toDouble(),
      rank: json['rank'] as int?,
      dateCreated: json['dateCreated'] == null
          ? null
          : DateTime.parse(json['dateCreated'] as String),
      hex: json['hex'] as String?,
      rgb: json['rgb'] == null
          ? null
          : Rgb.fromJson(json['rgb'] as Map<String, dynamic>),
      hsv: json['hsv'] == null
          ? null
          : Hsv.fromJson(json['hsv'] as Map<String, dynamic>),
      description: json['description'] as String?,
      url: json['url'] as String?,
      imageUrl: json['imageUrl'] as String?,
      badgeUrl: json['badgeUrl'] as String?,
      apiUrl: json['apiUrl'] as String?,
    );

Map<String, dynamic> _$ColourloversColorToJson(ColourloversColor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'userName': instance.userName,
      'numViews': instance.numViews,
      'numVotes': instance.numVotes,
      'numComments': instance.numComments,
      'numHearts': instance.numHearts,
      'rank': instance.rank,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'hex': instance.hex,
      'rgb': instance.rgb?.toJson(),
      'hsv': instance.hsv?.toJson(),
      'description': instance.description,
      'url': instance.url,
      'imageUrl': instance.imageUrl,
      'badgeUrl': instance.badgeUrl,
      'apiUrl': instance.apiUrl,
    };

Hsv _$HsvFromJson(Map<String, dynamic> json) => Hsv(
      hue: json['hue'] as int?,
      saturation: json['saturation'] as int?,
      value: json['value'] as int?,
    );

Map<String, dynamic> _$HsvToJson(Hsv instance) => <String, dynamic>{
      'hue': instance.hue,
      'saturation': instance.saturation,
      'value': instance.value,
    };

Rgb _$RgbFromJson(Map<String, dynamic> json) => Rgb(
      red: json['red'] as int?,
      green: json['green'] as int?,
      blue: json['blue'] as int?,
    );

Map<String, dynamic> _$RgbToJson(Rgb instance) => <String, dynamic>{
      'red': instance.red,
      'green': instance.green,
      'blue': instance.blue,
    };
