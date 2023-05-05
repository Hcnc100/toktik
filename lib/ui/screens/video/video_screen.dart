import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tok_tik/ui/screens/video/view_model/video_state.dart';
import 'package:tok_tik/ui/screens/video/widgets/actions_video.dart';
import 'package:tok_tik/ui/screens/video/widgets/full_screen_video.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _BodyVideo(),
    );
  }
}

class _BodyVideo extends ConsumerWidget {
  const _BodyVideo();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFirstRequest = ref.watch(isFirstRequestProvider);
    if (isFirstRequest) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return const _VideoPlayer();
  }
}

class _VideoPlayer extends ConsumerWidget {
  const _VideoPlayer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final videos = ref.watch(videoViewModelProvider).videos;
    return PageView.builder(
      itemBuilder: (context, index) {
        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenVideo(
                url: videos[index].url,
                caption: videos[index].name,
              ),
            ),
            ActionsVideo(
              numberLinks: videos[index].showLikes,
              numberViews: videos[index].showViews,
            )
          ],
        );
      },
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
    );
  }
}


