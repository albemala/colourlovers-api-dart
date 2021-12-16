// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pattern.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClPattern _$ClPatternFromJson(Map<String, dynamic> json) => ClPattern(
      id: json['id'] as int?,
      title: json['title'] as String?,
      userName: json['userName'] as String?,
      numViews: json['numViews'] as int?,
      numVotes: json['numVotes'] as int?,
      numComments: json['numComments'] as int?,
      numHearts: json['numHearts'] as int?,
      rank: json['rank'] as int?,
      dateCreated: json['dateCreated'] == null
          ? null
          : DateTime.parse(json['dateCreated'] as String),
      colors:
          (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      description: json['description'] as String?,
      url: json['url'] as String?,
      imageUrl: json['imageUrl'] as String?,
      badgeUrl: json['badgeUrl'] as String?,
      apiUrl: json['apiUrl'] as String?,
      template: json['template'] == null
          ? null
          : ClTemplate.fromJson(json['template'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClPatternToJson(ClPattern instance) => <String, dynamic>{
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
      'template': instance.template,
    };

ClTemplate _$ClTemplateFromJson(Map<String, dynamic> json) => ClTemplate(
      title: json['title'] as String?,
      url: json['url'] as String?,
      author: json['author'] == null
          ? null
          : ClAuthor.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClTemplateToJson(ClTemplate instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'author': instance.author,
    };

ClAuthor _$ClAuthorFromJson(Map<String, dynamic> json) => ClAuthor(
      userName: json['userName'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ClAuthorToJson(ClAuthor instance) => <String, dynamic>{
      'userName': instance.userName,
      'url': instance.url,
    };
