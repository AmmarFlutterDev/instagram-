// ignore_for_file: must_be_immutable, unused_field, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    super.key,
  });

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController controller;
  late Future<void> futureController;

  @override
  void initState() {
    controller = VideoPlayerController.asset('assets/bee.mp4');
    futureController = controller.initialize();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.setVolume(0);
      controller.play();
    });
    controller.setLooping(true);
    controller.setVolume(0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: futureController,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: VideoPlayer(controller),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(   
                color: Colors.white,
              ),
            );
          }
        });
  }
}
