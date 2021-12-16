import 'package:json_annotation/json_annotation.dart';

part 'pattern.g.dart';

@JsonSerializable()
class ClPattern {
  int? id;
  String? title;
  String? userName;
  int? numViews;
  int? numVotes;
  int? numComments;
  int? numHearts;
  int? rank;
  DateTime? dateCreated;
  List<String>? colors;
  String? description;
  String? url;
  String? imageUrl;
  String? badgeUrl;
  String? apiUrl;
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
