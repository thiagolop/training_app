class Exercises {
  String title;
  String img;
  Exercises({
    required this.title,
    required this.img,
  });

  factory Exercises.fromJson(Map<String, dynamic> parseJson) {
    return Exercises(
      title: parseJson['title'],
      img: parseJson['img'],
    );
  }
}
