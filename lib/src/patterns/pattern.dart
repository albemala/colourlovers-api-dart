import 'package:json_annotation/json_annotation.dart';

part 'pattern.g.dart';

@JsonSerializable()
class ColourloversPattern {
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
  ColourloversTemplate? template;

  ColourloversPattern({
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

  factory ColourloversPattern.fromJson(Map<String, dynamic> json) =>
      _$ColourloversPatternFromJson(json);

  Map<String, dynamic> toJson() => _$ColourloversPatternToJson(this);

  @override
  String toString() {
    return '''
ColourloversPattern{id: $id, title: $title, userName: $userName, numViews: $numViews, numVotes: $numVotes, numComments: $numComments, numHearts: $numHearts, rank: $rank, dateCreated: $dateCreated, colors: $colors, description: $description, url: $url, imageUrl: $imageUrl, badgeUrl: $badgeUrl, apiUrl: $apiUrl, template: $template}''';
  }
}

@JsonSerializable()
class ColourloversTemplate {
  String? title;
  String? url;
  ColourloversAuthor? author;

  ColourloversTemplate({
    this.title,
    this.url,
    this.author,
  });

  factory ColourloversTemplate.fromJson(Map<String, dynamic> json) =>
      _$ColourloversTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$ColourloversTemplateToJson(this);

  @override
  String toString() {
    return 'Template{title: $title, url: $url, author: $author}';
  }
}

@JsonSerializable()
class ColourloversAuthor {
  String? userName;
  String? url;

  ColourloversAuthor({
    this.userName,
    this.url,
  });

  factory ColourloversAuthor.fromJson(Map<String, dynamic> json) =>
      _$ColourloversAuthorFromJson(json);

  Map<String, dynamic> toJson() => _$ColourloversAuthorToJson(this);

  @override
  String toString() {
    return 'Author{userName: $userName, url: $url}';
  }
}
