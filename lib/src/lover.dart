import 'package:json_annotation/json_annotation.dart';

part 'lover.g.dart';

@JsonSerializable()
class ClLover {
  /// This Lover's Username
  String? userName;

  /// Date this Lover registered with COLOURlovers.com
  DateTime? dateRegistered;

  /// Date this Lover was last active on COLOURlovers.com
  DateTime? dateLastActive;

  /// This Lover's rating
  int? rating;

  /// This Lover's location
  String? location;

  /// Number of Colors this Lover has made
  int? numColors;

  /// Number of Palettes this Lover has made
  int? numPalettes;

  /// Number of Patterns this Lover has made
  int? numPatterns;

  /// Number of comments this Lover has made
  int? numCommentsMade;

  /// Number of Lovers [friends] this Lover has
  int? numLovers;

  /// Number of comments this Lover has on their profile
  int? numCommentsOnProfile;

  /// Last 10 comments made on this Lover's profile
  List<dynamic>? comments;

  /// This Lover's COLOURlovers.com URL
  String? url;

  /// This Lover's COLOURlovers.com API URL
  String? apiUrl;

  ClLover({
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

  factory ClLover.fromJson(Map<String, dynamic> json) => _$ClLoverFromJson(json);

  Map<String, dynamic> toJson() => _$ClLoverToJson(this);

  @override
  String toString() {
    return 'ClLover{userName: $userName, dateRegistered: $dateRegistered, dateLastActive: $dateLastActive, rating: $rating, location: $location, numColors: $numColors, numPalettes: $numPalettes, numPatterns: $numPatterns, numCommentsMade: $numCommentsMade, numLovers: $numLovers, numCommentsOnProfile: $numCommentsOnProfile, comments: $comments, url: $url, apiUrl: $apiUrl}';
  }
}
