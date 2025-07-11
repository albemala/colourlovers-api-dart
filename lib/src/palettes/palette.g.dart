// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'palette.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColourloversPalette _$ColourloversPaletteFromJson(Map<String, dynamic> json) =>
    ColourloversPalette(
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
      colors:
          (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      colorWidths:
          (json['colorWidths'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList(),
      description: json['description'] as String?,
      url: json['url'] as String?,
      imageUrl: json['imageUrl'] as String?,
      badgeUrl: json['badgeUrl'] as String?,
      apiUrl: json['apiUrl'] as String?,
    );

Map<String, dynamic> _$ColourloversPaletteToJson(
  ColourloversPalette instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'userName': instance.userName,
  'numViews': instance.numViews,
  'numVotes': instance.numVotes,
  'numComments': instance.numComments,
  'numHearts': instance.numHearts,
  'rank': instance.rank,
  'dateCreated': instance.dateCreated?.toIso8601String(),
  'colors': instance.colors,
  'colorWidths': instance.colorWidths,
  'description': instance.description,
  'url': instance.url,
  'imageUrl': instance.imageUrl,
  'badgeUrl': instance.badgeUrl,
  'apiUrl': instance.apiUrl,
};
