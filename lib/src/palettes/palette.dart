import 'package:json_annotation/json_annotation.dart';

part 'palette.g.dart';

@JsonSerializable()
class ColourloversPalette {
  /// Unique id for this Palette
  int? id;

  /// Title / Name of the Palette
  String? title;

  /// Username of the Palette's creator
  String? userName;

  /// Number of views this Palette has received
  int? numViews;

  /// Number of votes this Palette has received
  int? numVotes;

  /// Number of comments this Palette has received
  int? numComments;

  /// Number of hearts this Palette has
  double? numHearts;

  /// This Palette's rank on COLOURlovers.com
  int? rank;

  /// Date this Palette was created
  DateTime? dateCreated;

  /// List of Colors within this Palette
  List<String>? colors;

  /// This Palette's Color's widths. Ranges from 0.0 to 1.0
  List<double>? colorWidths;

  /// This Palette's description
  String? description;

  /// This Palette's COLOURlovers.com URL
  String? url;

  /// Link to a png version of this Palette
  String? imageUrl;

  /// Link to a COLOURlovers.com badge for this Palette
  String? badgeUrl;

  /// This Palette's COLOURlovers.com API URL
  String? apiUrl;

  ColourloversPalette({
    this.id,
    this.title,
    this.userName,
    this.numViews,
    this.numVotes,
    this.numComments,
    this.numHearts,
    this.rank,
    this.dateCreated,
    this.colors,
    this.colorWidths,
    this.description,
    this.url,
    this.imageUrl,
    this.badgeUrl,
    this.apiUrl,
  });

  factory ColourloversPalette.fromJson(Map<String, dynamic> json) =>
      _$ColourloversPaletteFromJson(json);

  Map<String, dynamic> toJson() => _$ColourloversPaletteToJson(this);

  @override
  String toString() {
    return '''
ColourloversPalette{id: $id, title: $title, userName: $userName, numViews: $numViews, numVotes: $numVotes, numComments: $numComments, numHearts: $numHearts, rank: $rank, dateCreated: $dateCreated, colors: $colors, description: $description, url: $url, imageUrl: $imageUrl, badgeUrl: $badgeUrl, apiUrl: $apiUrl}''';
  }
}
