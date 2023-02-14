import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:training_app/app/pages/home/modulo.dart';

class HomeController {
  List<Exercises> exercisesList = [];

  Future<String> getJson() {
    return rootBundle.loadString('json/info.json');
  }

  getExercises() async {
    String json = await getJson();
    final result = jsonDecode(json);
    final List<Exercises> exercisesList = (result as List).map((e) => Exercises.fromJson(e)).toList();
    return exercisesList;
  }
}
