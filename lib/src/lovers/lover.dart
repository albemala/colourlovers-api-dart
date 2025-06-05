import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'lover.g.dart';

@JsonSerializable()
@immutable
class ColourloversLover extends Equatable {
  /// This Lover's Username
  final String? userName;

  /// Date this Lover registered with COLOURlovers.com
  final DateTime? dateRegistered;

  /// Date this Lover was last active on COLOURlovers.com
  final DateTime? dateLastActive;

  /// This Lover's rating
  final int? rating;

  /// This Lover's location
  final String? location;

  /// Number of Colors this Lover has made
  final int? numColors;

  /// Number of Palettes this Lover has made
  final int? numPalettes;

  /// Number of Patterns this Lover has made
  final int? numPatterns;

  /// Number of comments this Lover has made
  final int? numCommentsMade;

  /// Number of Lovers [friends] this Lover has
  final int? numLovers;

  /// Number of comments this Lover has on their profile
  final int? numCommentsOnProfile;

  /// Last 10 comments made on this Lover's profile
  final List<dynamic>? comments;

  /// This Lover's COLOURlovers.com URL
  final String? url;

  /// This Lover's COLOURlovers.com API URL
  final String? apiUrl;

  const ColourloversLover({
    this.userName,
    this.dateRegistered,
    this.dateLastActive,
    this.rating,
    this.location,
    this.numColors,
    this.numPalettes,
    this.numPatterns,
    this.numCommentsMade,
    this.numLovers,
    this.numCommentsOnProfile,
    this.comments,
    this.url,
    this.apiUrl,
  });

  factory ColourloversLover.fromJson(Map<String, dynamic> json) =>
      _$ColourloversLoverFromJson(json);

  Map<String, dynamic> toJson() => _$ColourloversLoverToJson(this);

  @override
  List<Object?> get props => [
    userName,
    dateRegistered,
    dateLastActive,
    rating,
    location,
    numColors,
    numPalettes,
    numPatterns,
    numCommentsMade,
    numLovers,
    numCommentsOnProfile,
    comments,
    url,
    apiUrl,
  ];
}
