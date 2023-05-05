import 'package:flutter/material.dart';
import 'package:tok_tik/ui/screens/video/widgets/caption_video.dart';
import 'package:tok_tik/ui/screens/video/widgets/video_back_ground.dart';
import 'package:video_player/video_player.dart';

class FullScreenVideo extends StatefulWidget {
  final String url;
  final String caption;

  const FullScreenVideo({
    super.key,
    required this.url,
    required this.caption,
  });

  @override
  State<FullScreenVideo> createState() => _FullScreenVideoState();
}

class _FullScreenVideoState extends State<FullScreenVideo> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.asset(widget.url)
      ..setLooping(true)
      ..setVolume(0)
      ..play();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }
        return GestureDetector(
          onTap: () {
            _videoPlayerController.value.isPlaying
                ? _videoPlayerController.pause()
                : _videoPlayerController.play();
          },
          child: AspectRatio(
            aspectRatio: _videoPlayerController.value.aspectRatio,
            child: Stack(
              children: [
                VideoPlayer(_videoPlayerController),
                const VideoBackground(),
                Positioned(
                  bottom: 40,
                  left: 10,
                  child: CaptionVideo(caption: widget.caption),
                )
              ],
            ),
          ),
        );
      },
      future: _videoPlayerController.initialize(),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}

