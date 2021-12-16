// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClLover _$ClLoverFromJson(Map<String, dynamic> json) => ClLover(
      userName: json['userName'] as String?,
      dateRegistered: json['dateRegistered'] == null
          ? null
          : DateTime.parse(json['dateRegistered'] as String),
      dateLastActive: json['dateLastActive'] == null
          ? null
          : DateTime.parse(json['dateLastActive'] as String),
      rating: json['rating'] as int?,
      location: json['location'] as String?,
      numColors: json['numColors'] as int?,
      numPalettes: json['numPalettes'] as int?,
      numPatterns: json['numPatterns'] as int?,
      numCommentsMade: json['numCommentsMade'] as int?,
      numLovers: json['numLovers'] as int?,
      numCommentsOnProfile: json['numCommentsOnProfile'] as int?,
      comments: json['comments'] as List<dynamic>?,
      url: json['url'] as String?,
      apiUrl: json['apiUrl'] as String?,
    );

Map<String, dynamic> _$ClLoverToJson(ClLover instance) => <String, dynamic>{
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
