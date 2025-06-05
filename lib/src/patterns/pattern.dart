import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'pattern.g.dart';

@JsonSerializable()
@immutable
class ColourloversPattern extends Equatable {
  /// Unique id for this Pattern
  final int? id;

  /// Title / Name of the Pattern
  final String? title;

  /// Username of the Pattern's creator
  final String? userName;

  /// Number of views this Pattern has received
  final int? numViews;

  /// Number of votes this Pattern has received
  final int? numVotes;

  /// Number of comments this Pattern has received
  final int? numComments;

  /// Number of Hearts this Pattern has
  final int? numHearts;

  /// This Pattern's rank on COLOURlovers.com
  final int? rank;

  /// Date this Pattern was created
  final DateTime? dateCreated;

  /// List of colors within this Pattern
  final List<String>? colors;

  /// This Pattern's description
  final String? description;

  /// This Pattern's COLOURlovers.com URL
  final String? url;

  /// Link to a png version of this Pattern
  final String? imageUrl;

  /// Link to a COLOURlovers.com badge for this Pattern
  final String? badgeUrl;

  /// This Pattern's COLOURlovers.com API URL
  final String? apiUrl;

  ///
  final ColourloversTemplate? template;

  const ColourloversPattern({
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
  List<Object?> get props => [
    id,
    title,
    userName,
    numViews,
    numVotes,
    numComments,
    numHearts,
    rank,
    dateCreated,
    colors,
    description,
    url,
    imageUrl,
    badgeUrl,
    apiUrl,
    template,
  ];
}

@JsonSerializable()
@immutable
class ColourloversTemplate extends Equatable {
  final String? title;
  final String? url;
  final ColourloversAuthor? author;

  const ColourloversTemplate({this.title, this.url, this.author});

  factory ColourloversTemplate.fromJson(Map<String, dynamic> json) =>
      _$ColourloversTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$ColourloversTemplateToJson(this);

  @override
  List<Object?> get props => [title, url, author];
}

@JsonSerializable()
@immutable
class ColourloversAuthor extends Equatable {
  final String? userName;
  final String? url;

  const ColourloversAuthor({this.userName, this.url});

  factory ColourloversAuthor.fromJson(Map<String, dynamic> json) =>
      _$ColourloversAuthorFromJson(json);

  Map<String, dynamic> toJson() => _$ColourloversAuthorToJson(this);

  @override
  List<Object?> get props => [userName, url];
}
