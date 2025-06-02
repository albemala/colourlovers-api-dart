// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColourloversLover _$ColourloversLoverFromJson(Map<String, dynamic> json) =>
    ColourloversLover(
      userName: json['userName'] as String?,
      dateRegistered:
          json['dateRegistered'] == null
              ? null
              : DateTime.parse(json['dateRegistered'] as String),
      dateLastActive:
          json['dateLastActive'] == null
              ? null
              : DateTime.parse(json['dateLastActive'] as String),
      rating: (json['rating'] as num?)?.toInt(),
      location: json['location'] as String?,
      numColors: (json['numColors'] as num?)?.toInt(),
      numPalettes: (json['numPalettes'] as num?)?.toInt(),
      numPatterns: (json['numPatterns'] as num?)?.toInt(),
      numCommentsMade: (json['numCommentsMade'] as num?)?.toInt(),
      numLovers: (json['numLovers'] as num?)?.toInt(),
      numCommentsOnProfile: (json['numCommentsOnProfile'] as num?)?.toInt(),
      comments: json['comments'] as List<dynamic>?,
      url: json['url'] as String?,
      apiUrl: json['apiUrl'] as String?,
    );

Map<String, dynamic> _$ColourloversLoverToJson(ColourloversLover instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'dateRegistered': instance.dateRegistered?.toIso8601String(),
      'dateLastActive': instance.dateLastActive?.toIso8601String(),
      'rating': instance.rating,
      'location': instance.location,
      'numColors': instance.numColors,
      'numPalettes': instance.numPalettes,
      'numPatterns': instance.numPatterns,
      'numCommentsMade': instance.numCommentsMade,
      'numLovers': instance.numLovers,
      'numCommentsOnProfile': instance.numCommentsOnProfile,
      'comments': instance.comments,
      'url': instance.url,
      'apiUrl': instance.apiUrl,
    };
