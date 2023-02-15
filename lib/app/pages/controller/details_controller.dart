import 'dart:convert';
import 'package:flutter/services.dart';
import '../details/widgets/details_model.dart';

class DetailsController {
  List<DetailsModel> detailsList = [];

  Future<String> getJson() {
    return rootBundle.loadString('json/vidioinfo.json');
  }

  getDetails() async {
    String json = await getJson();
    final result = jsonDecode(json);
    final List<DetailsModel> detailsList = (result as List).map((e) => DetailsModel.fromJson(e)).toList();
    return detailsList;
  }
}
