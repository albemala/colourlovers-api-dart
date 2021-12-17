import 'package:json_annotation/json_annotation.dart';

part 'pattern.g.dart';

@JsonSerializable()
class ClPattern {
  /// Unique id for this Pattern
  int? id;

  /// Title / Name of the Pattern
  String? title;

  /// Username of the Pattern's creator
  String? userName;

  /// Number of views this Pattern has received
  int? numViews;

  /// Number of votes this Pattern has received
  int? numVotes;

  /// Number of comments this Pattern has received
  int? numComments;

  /// Number of Hearts this Pattern has
  int? numHearts;

  /// This Pattern's rank on COLOURlovers.com
  int? rank;

  /// Date this Pattern was created
  DateTime? dateCreated;

  /// List of colors within this Pattern
  List<String>? colors;

  /// This Pattern's description
  String? description;

  /// This Pattern's COLOURlovers.com URL
  String? url;

  /// Link to a png version of this Pattern
  String? imageUrl;

  /// Link to a COLOURlovers.com badge for this Pattern
  String? badgeUrl;

  /// This Pattern's COLOURlovers.com API URL
  String? apiUrl;

  ///
  ClTemplate? template;

  ClPattern({
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
    this.description,
    this.url,
    this.imageUrl,
    this.badgeUrl,
    this.apiUrl,
    this.template,
  });

  factory ClPattern.fromJson(Map<String, dynamic> json) => _$ClPatternFromJson(json);

  Map<String, dynamic> toJson() => _$ClPatternToJson(this);

  @override
  String toString() {
    return 'ClPattern{id: $id, title: $title, userName: $userName, numViews: $numViews, numVotes: $numVotes, numComments: $numComments, numHearts: $numHearts, rank: $rank, dateCreated: $dateCreated, colors: $colors, description: $description, url: $url, imageUrl: $imageUrl, badgeUrl: $badgeUrl, apiUrl: $apiUrl, template: $template}';
  }
}

@JsonSerializable()
class ClTemplate {
  String? title;
  String? url;
  ClAuthor? author;

  ClTemplate({
    this.title,
    this.url,
    this.author,
  });

  factory ClTemplate.fromJson(Map<String, dynamic> json) => _$ClTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$ClTemplateToJson(this);

  @override
  String toString() {
    return 'Template{title: $title, url: $url, author: $author}';
  }
}

@JsonSerializable()
class ClAuthor {
  String? userName;
  String? url;

  ClAuthor({
    this.userName,
    this.url,
  });

  factory ClAuthor.fromJson(Map<String, dynamic> json) => _$ClAuthorFromJson(json);

  Map<String, dynamic> toJson() => _$ClAuthorToJson(this);

  @override
  String toString() {
    return 'Author{userName: $userName, url: $url}';
  }
}
