// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$videoPlayerControllerAtom =
      Atom(name: '_HomeControllerBase.videoPlayerController');

  @override
  VideoPlayerController get videoPlayerController {
    _$videoPlayerControllerAtom.context
        .enforceReadPolicy(_$videoPlayerControllerAtom);
    _$videoPlayerControllerAtom.reportObserved();
    return super.videoPlayerController;
  }

  @override
  set videoPlayerController(VideoPlayerController value) {
    _$videoPlayerControllerAtom.context.conditionallyRunInAction(() {
      super.videoPlayerController = value;
      _$videoPlayerControllerAtom.reportChanged();
    }, _$videoPlayerControllerAtom,
        name: '${_$videoPlayerControllerAtom.name}_set');
  }

  final _$chewieControllerAtom =
      Atom(name: '_HomeControllerBase.chewieController');

  @override
  ChewieController get chewieController {
    _$chewieControllerAtom.context.enforceReadPolicy(_$chewieControllerAtom);
    _$chewieControllerAtom.reportObserved();
    return super.chewieController;
  }

  @override
  set chewieController(ChewieController value) {
    _$chewieControllerAtom.context.conditionallyRunInAction(() {
      super.chewieController = value;
      _$chewieControllerAtom.reportChanged();
    }, _$chewieControllerAtom, name: '${_$chewieControllerAtom.name}_set');
  }

  final _$isPlayingAtom = Atom(name: '_HomeControllerBase.isPlaying');

  @override
  bool get isPlaying {
    _$isPlayingAtom.context.enforceReadPolicy(_$isPlayingAtom);
    _$isPlayingAtom.reportObserved();
    return super.isPlaying;
  }

  @override
  set isPlaying(bool value) {
    _$isPlayingAtom.context.conditionallyRunInAction(() {
      super.isPlaying = value;
      _$isPlayingAtom.reportChanged();
    }, _$isPlayingAtom, name: '${_$isPlayingAtom.name}_set');
  }

  final _$isEndPlayingAtom = Atom(name: '_HomeControllerBase.isEndPlaying');

  @override
  bool get isEndPlaying {
    _$isEndPlayingAtom.context.enforceReadPolicy(_$isEndPlayingAtom);
    _$isEndPlayingAtom.reportObserved();
    return super.isEndPlaying;
  }

  @override
  set isEndPlaying(bool value) {
    _$isEndPlayingAtom.context.conditionallyRunInAction(() {
      super.isEndPlaying = value;
      _$isEndPlayingAtom.reportChanged();
    }, _$isEndPlayingAtom, name: '${_$isEndPlayingAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void videoListener() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.videoListener();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'videoPlayerController: ${videoPlayerController.toString()},chewieController: ${chewieController.toString()},isPlaying: ${isPlaying.toString()},isEndPlaying: ${isEndPlaying.toString()}';
    return '{$string}';
  }
}
