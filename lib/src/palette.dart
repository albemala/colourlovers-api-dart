import 'package:json_annotation/json_annotation.dart';

part 'palette.g.dart';

@JsonSerializable()
class ClPalette {
  int? id;
  String? title;
  String? userName;
  int? numViews;
  int? numVotes;
  int? numComments;
  double? numHearts;
  int? rank;
  DateTime? dateCreated;
  List<String>? colors;
  List<double>? colorWidths;
  String? description;
  String? url;
  String? imageUrl;
  String? badgeUrl;
  String? apiUrl;

  ClPalette({
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

  factory ClPalette.fromJson(Map<String, dynamic> json) => _$ClPaletteFromJson(json);

  Map<String, dynamic> toJson() => _$ClPaletteToJson(this);

  @override
  String toString() {
    return 'ClPalette{id: $id, title: $title, userName: $userName, numViews: $numViews, numVotes: $numVotes, numComments: $numComments, numHearts: $numHearts, rank: $rank, dateCreated: $dateCreated, colors: $colors, description: $description, url: $url, imageUrl: $imageUrl, badgeUrl: $badgeUrl, apiUrl: $apiUrl}';
  }
}
