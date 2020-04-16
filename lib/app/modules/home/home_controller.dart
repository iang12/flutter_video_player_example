import 'package:chewie/chewie.dart';
import 'package:mobx/mobx.dart';
import 'package:video_player/video_player.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  VideoPlayerController videoPlayerController;
  @observable
  ChewieController chewieController;
  @observable
  bool isPlaying = false;
  @observable
  bool isEndPlaying = false;
  @action
  void videoListener() {
    if (videoPlayerController.value.position ==
        videoPlayerController.value.duration) {
      isEndPlaying = true;
      isPlaying = false;
    }
  }
}
