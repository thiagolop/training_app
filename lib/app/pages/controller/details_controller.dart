import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:pod_player/pod_player.dart';
import '../details/widgets/details_model.dart';

class DetailsController {
  PodPlayerController? videoPlayercontroller;
  List<DetailsModel> detailsList = [];
  String urlVideo = '';

  Future<String> getJson() {
    return rootBundle.loadString('json/vidioinfo.json');
  }

  getDetails() async {
    String json = await getJson();
    final result = jsonDecode(json);
    final List<DetailsModel> detailsList = (result as List).map((e) => DetailsModel.fromJson(e)).toList();
    return detailsList;
  }

  _playPauseVideo(String video) {
    if (urlVideo == video) {
      videoPlayercontroller!.videoPlayerValue!.isPlaying ? videoPlayercontroller!.pause() : videoPlayercontroller!.play();
    } else {
      videoPlayercontroller?.dispose();
      videoPlayercontroller = PodPlayerController(
        playVideoFrom: PlayVideoFrom.youtube(video),
      )..initialise();
      urlVideo = video;
    }
  }


}
