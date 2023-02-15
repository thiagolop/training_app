class DetailsModel {
  String title;
  String img;
  String description;
  String video;
  String duration;
  DetailsModel({
    required this.title,
    required this.img,
    required this.description,
    required this.video,
    required this.duration,
  });

  String get titleShort {
    int pos = duration.indexOf('e');
    if (pos > 0) {
      return duration.substring(0, pos);
    }
    return duration;
  }

  factory DetailsModel.fromJson(Map<String, dynamic> parseJson) {
    return DetailsModel(
      title: parseJson['title'] ?? '',
      img: parseJson['thumbnail'] ?? '',
      description: parseJson['description'] ?? '',
      video: parseJson['url'] ?? '',
      duration: parseJson['duration'] ?? '',
    );
  }
}
