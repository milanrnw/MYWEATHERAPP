class CountryCodeModel {
  final String country;
  final int sunrise;
  final int sunset;

  CountryCodeModel({
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  factory CountryCodeModel.fromJson(Map<String, dynamic> json) => CountryCodeModel(
        country: json["country"],
        sunrise: json["sunrise"],
        sunset: json["sunset"],
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "sunrise": sunrise,
        "sunset": sunset,
      };
}