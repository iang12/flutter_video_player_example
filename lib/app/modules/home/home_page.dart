import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:video_player/video_player.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Video Player"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  String urlVideo =
      'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4';
  @override
  void initState() {
    super.initState();
    controller.videoPlayerController = VideoPlayerController.network(urlVideo);
    controller.videoPlayerController.addListener(controller.videoListener);
    controller.chewieController = ChewieController(
      videoPlayerController: controller.videoPlayerController,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: false,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },

      // Try playing around with some of these other options:
      // showControls: true,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.blue,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.lightGreen,
      ),
      placeholder: Container(
        child: Center(child: CircularProgressIndicator()),
      ),
      // autoInitialize: true,
    );
  }

  @override
  void dispose() {
    controller.videoPlayerController.dispose();
    controller.chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Chewie(controller: controller.chewieController)
              ],
            ),
          ),
        ));
  }
}
