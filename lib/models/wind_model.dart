class WindModel {
  final double speed;
  final int deg;
  final double gust;

  WindModel({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  factory WindModel.fromJson(Map<String, dynamic> json) => WindModel(
        speed: json["speed"]?.toDouble(),
        deg: json["deg"],
        gust: json["gust"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "speed": speed,
        "deg": deg,
        "gust": gust,
      };
}
