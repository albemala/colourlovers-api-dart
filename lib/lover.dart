import 'package:json_annotation/json_annotation.dart';

part 'lover.g.dart';

@JsonSerializable()
class ClLover {
  String? userName;
  DateTime? dateRegistered;
  DateTime? dateLastActive;
  int? rating;
  String? location;
  int? numColors;
  int? numPalettes;
  int? numPatterns;
  int? numCommentsMade;
  int? numLovers;
  int? numCommentsOnProfile;
  List<dynamic>? comments;
  String? url;
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
