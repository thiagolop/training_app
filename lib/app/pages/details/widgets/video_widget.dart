import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pod_player/pod_player.dart';
import '../../../core/ui/styles/colors_app.dart' as color;

class VideoWidget extends StatefulWidget {
  final PodPlayerController controller;

  const VideoWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back_ios, size: 20, color: color.ColorsApp.secondPageTopIconColor),
              ),
              Icon(Icons.info_outline, size: 20, color: color.ColorsApp.secondPageTopIconColor),
            ],
          ),
        ),
        SizedBox(
          height: 250,
          width: 300,
          child: PodVideoPlayer(controller: widget.controller),
        ),
      ],
    );
  }
}
