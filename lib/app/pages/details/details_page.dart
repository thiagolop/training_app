import 'package:flutter/material.dart';
import 'package:pod_player/pod_player.dart';
import 'package:training_app/app/pages/details/widgets/video_widget.dart';
import 'package:training_app/app/pages/details/widgets/body_details.dart';
import 'package:training_app/app/pages/details/widgets/details_model.dart';
import 'package:training_app/app/pages/details/widgets/splash_bar__details_widget.dart';
import '../../core/ui/styles/colors_app.dart' as color;
import '../controller/details_controller.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  DetailsController detailsController = DetailsController();
  PodPlayerController? videoPlayercontroller;
  String urlVideo = '';
  List<DetailsModel> detailsListVidios = [];

  @override
  void initState() {
    super.initState();
    _initVidios();
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

  _initVidios() async {
    detailsListVidios = await detailsController.getDetails();
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayercontroller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.ColorsApp.gradientFrist,
              color.ColorsApp.gradientSecond,
            ],
            begin: const FractionalOffset(0.0, 0.7),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            urlVideo.isNotEmpty
                ? Expanded(
                    child: VideoWidget(controller: videoPlayercontroller!),
                  )
                : const SplashBarDetailsWidget(),
            BodyDetails(
              itemCount: detailsListVidios.length,
              vidioList: detailsListVidios,
              onTap: (String video) {
                setState(
                  () {
                    _playPauseVideo(video);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
