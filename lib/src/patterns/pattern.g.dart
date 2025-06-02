// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pattern.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColourloversPattern _$ColourloversPatternFromJson(Map<String, dynamic> json) =>
    ColourloversPattern(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      userName: json['userName'] as String?,
      numViews: (json['numViews'] as num?)?.toInt(),
      numVotes: (json['numVotes'] as num?)?.toInt(),
      numComments: (json['numComments'] as num?)?.toInt(),
      numHearts: (json['numHearts'] as num?)?.toInt(),
      rank: (json['rank'] as num?)?.toInt(),
      dateCreated:
          json['dateCreated'] == null
              ? null
              : DateTime.parse(json['dateCreated'] as String),
      colors:
          (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      description: json['description'] as String?,
      url: json['url'] as String?,
      imageUrl: json['imageUrl'] as String?,
      badgeUrl: json['badgeUrl'] as String?,
      apiUrl: json['apiUrl'] as String?,
      template:
          json['template'] == null
              ? null
              : ColourloversTemplate.fromJson(
                json['template'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$ColourloversPatternToJson(
  ColourloversPattern instance,
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
  'description': instance.description,
  'url': instance.url,
  'imageUrl': instance.imageUrl,
  'badgeUrl': instance.badgeUrl,
  'apiUrl': instance.apiUrl,
  'template': instance.template?.toJson(),
};

ColourloversTemplate _$ColourloversTemplateFromJson(
  Map<String, dynamic> json,
) => ColourloversTemplate(
  title: json['title'] as String?,
  url: json['url'] as String?,
  author:
      json['author'] == null
          ? null
          : ColourloversAuthor.fromJson(json['author'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ColourloversTemplateToJson(
  ColourloversTemplate instance,
) => <String, dynamic>{
  'title': instance.title,
  'url': instance.url,
  'author': instance.author?.toJson(),
};

ColourloversAuthor _$ColourloversAuthorFromJson(Map<String, dynamic> json) =>
    ColourloversAuthor(
      userName: json['userName'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ColourloversAuthorToJson(ColourloversAuthor instance) =>
    <String, dynamic>{'userName': instance.userName, 'url': instance.url};
