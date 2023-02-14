class ExercisesPictures {
  String title;
  String img;
  ExercisesPictures({
    required this.title,
    required this.img,
  });

  factory ExercisesPictures.fromJson(Map<String, dynamic> parseJson) {
    return ExercisesPictures(
      title: parseJson['title'],
      img: parseJson['img'],
    );
  }
}
