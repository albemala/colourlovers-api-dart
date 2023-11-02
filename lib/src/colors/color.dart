import 'package:json_annotation/json_annotation.dart';

part 'color.g.dart';

@JsonSerializable()
class ColourloversColor {
  /// Unique id for this Color
  int? id;

  /// Title / Name of the Color
  String? title;

  /// Username of the Color's creator
  String? userName;

  /// Number of views this Color has received
  int? numViews;

  /// Number of votes this Color has received
  int? numVotes;

  /// Number of comments this Color has received
  int? numComments;

  /// Number of hearts this Color has
  double? numHearts;

  /// This Color's rank on COLOURlovers.com
  int? rank;

  /// Date this Color was created
  DateTime? dateCreated;

  /// This Color's hex value
  String? hex;

  /// RGB breakdown of this Color
  Rgb? rgb;

  /// HSV breakdown of this color
  Hsv? hsv;

  /// This Color's description
  String? description;

  /// This Color's COLOURlovers.com URL
  String? url;

  /// Link to a png version of this Color
  String? imageUrl;

  /// Link to a COLOURlovers.com badge for this Color
  String? badgeUrl;

  /// This Color's COLOURlovers.com API URL
  String? apiUrl;

  ColourloversColor({
    this.id,
    this.title,
    this.userName,
    this.numViews,
    this.numVotes,
    this.numComments,
    this.numHearts,
    this.rank,
    this.dateCreated,
    this.hex,
    this.rgb,
    this.hsv,
    this.description,
    this.url,
    this.imageUrl,
    this.badgeUrl,
    this.apiUrl,
  });

  factory ColourloversColor.fromJson(Map<String, dynamic> json) =>
      _$ColourloversColorFromJson(json);

  Map<String, dynamic> toJson() => _$ColourloversColorToJson(this);

  @override
  String toString() {
    return '''
ColourloversColor{id: $id, title: $title, userName: $userName, numViews: $numViews, numVotes: $numVotes, numComments: $numComments, numHearts: $numHearts, rank: $rank, dateCreated: $dateCreated, hex: $hex, rgb: $rgb, hsv: $hsv, description: $description, url: $url, imageUrl: $imageUrl, badgeUrl: $badgeUrl, apiUrl: $apiUrl}''';
  }
}

@JsonSerializable()
class Hsv {
  int? hue;
  int? saturation;
  int? value;

  Hsv({
    this.hue,
    this.saturation,
    this.value,
  });

  factory Hsv.fromJson(Map<String, dynamic> json) => _$HsvFromJson(json);

  Map<String, dynamic> toJson() => _$HsvToJson(this);

  @override
  String toString() {
    return 'Hsv{hue: $hue, saturation: $saturation, value: $value}';
  }
}

@JsonSerializable()
class Rgb {
  int? red;
  int? green;
  int? blue;

  Rgb({
    this.red,
    this.green,
    this.blue,
  });

  factory Rgb.fromJson(Map<String, dynamic> json) => _$RgbFromJson(json);

  Map<String, dynamic> toJson() => _$RgbToJson(this);

  @override
  String toString() {
    return 'Rgb{red: $red, green: $green, blue: $blue}';
  }
}
