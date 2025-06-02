// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColourloversColor _$ColourloversColorFromJson(Map<String, dynamic> json) =>
    ColourloversColor(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      userName: json['userName'] as String?,
      numViews: (json['numViews'] as num?)?.toInt(),
      numVotes: (json['numVotes'] as num?)?.toInt(),
      numComments: (json['numComments'] as num?)?.toInt(),
      numHearts: (json['numHearts'] as num?)?.toDouble(),
      rank: (json['rank'] as num?)?.toInt(),
      dateCreated:
          json['dateCreated'] == null
              ? null
              : DateTime.parse(json['dateCreated'] as String),
      hex: json['hex'] as String?,
      rgb:
          json['rgb'] == null
              ? null
              : Rgb.fromJson(json['rgb'] as Map<String, dynamic>),
      hsv:
          json['hsv'] == null
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
  hue: (json['hue'] as num?)?.toInt(),
  saturation: (json['saturation'] as num?)?.toInt(),
  value: (json['value'] as num?)?.toInt(),
);

Map<String, dynamic> _$HsvToJson(Hsv instance) => <String, dynamic>{
  'hue': instance.hue,
  'saturation': instance.saturation,
  'value': instance.value,
};

Rgb _$RgbFromJson(Map<String, dynamic> json) => Rgb(
  red: (json['red'] as num?)?.toInt(),
  green: (json['green'] as num?)?.toInt(),
  blue: (json['blue'] as num?)?.toInt(),
);

Map<String, dynamic> _$RgbToJson(Rgb instance) => <String, dynamic>{
  'red': instance.red,
  'green': instance.green,
  'blue': instance.blue,
};
