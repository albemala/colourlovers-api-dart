// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'palette.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClPalette _$ClPaletteFromJson(Map<String, dynamic> json) => ClPalette(
      id: json['id'] as int?,
      title: json['title'] as String?,
      userName: json['userName'] as String?,
      numViews: json['numViews'] as int?,
      numVotes: json['numVotes'] as int?,
      numComments: json['numComments'] as int?,
      numHearts: (json['numHearts'] as num?)?.toDouble(),
      rank: json['rank'] as int?,
      dateCreated: json['dateCreated'] == null ? null : DateTime.parse(json['dateCreated'] as String),
      colors: (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      colorWidths: (json['colorWidths'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
      description: json['description'] as String?,
      url: json['url'] as String?,
      imageUrl: json['imageUrl'] as String?,
      badgeUrl: json['badgeUrl'] as String?,
      apiUrl: json['apiUrl'] as String?,
    );

Map<String, dynamic> _$ClPaletteToJson(ClPalette instance) => <String, dynamic>{
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
