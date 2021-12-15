import 'package:json_annotation/json_annotation.dart';

part 'color.g.dart';

@JsonSerializable()
class ClColor {
  int? id;
  String? title;
  String? userName;
  int? numViews;
  int? numVotes;
  int? numComments;
  double? numHearts;
  int? rank;
  DateTime? dateCreated;
  String? hex;
  Rgb? rgb;
  Hsv? hsv;
  String? description;
  String? url;
  String? imageUrl;
  String? badgeUrl;
  String? apiUrl;

  ClColor({
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

  factory ClColor.fromJson(Map<String, dynamic> json) => _$ClColorFromJson(json);

  Map<String, dynamic> toJson() => _$ClColorToJson(this);

  @override
  String toString() {
    return 'ClColor{id: $id, title: $title, userName: $userName, numViews: $numViews, numVotes: $numVotes, numComments: $numComments, numHearts: $numHearts, rank: $rank, dateCreated: $dateCreated, hex: $hex, rgb: $rgb, hsv: $hsv, description: $description, url: $url, imageUrl: $imageUrl, badgeUrl: $badgeUrl, apiUrl: $apiUrl}';
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
