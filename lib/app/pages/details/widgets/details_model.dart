class DetailsModel {
  String title;
  String img;
  String description;
  String video;
  DetailsModel({
    required this.title,
    required this.img,
    required this.description,
    required this.video,
  });

  factory DetailsModel.fromJson(Map<String, dynamic> parseJson) {
    return DetailsModel(
      title: parseJson['title'] ?? '',
      img: parseJson['img'] ?? '',
      description: parseJson['description'] ?? '',
      video: parseJson['video'] ?? '',
    );
  }
}
