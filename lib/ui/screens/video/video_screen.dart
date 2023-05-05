import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tok_tik/ui/screens/video/view_model/video_state.dart';
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
  const _BodyVideo({
    super.key,
  });

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
  const _VideoPlayer({
    super.key,
  });

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
            _Actions(
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


class _Actions extends StatelessWidget {
  final String numberLinks;
  final String numberViews;
  const _Actions({
    super.key,
    required this.numberLinks,
    required this.numberViews,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      right: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _SingleAction(
            icon: Icons.favorite_border,
            label: numberLinks,
          ),
          const _SingleAction(
            icon: Icons.share,
            label: "Share",
          ),
          const _SingleAction(
            icon: Icons.save_alt_rounded,
            label: "Save",
          ),
          _SingleAction(
            icon: Icons.remove_red_eye,
            label: numberViews,
          ),
          SpinPerfect(
            duration: const Duration(seconds: 5),
            infinite: true,
            child: const _SingleAction(
              icon: Icons.play_circle_outline_outlined,
            ),
          ),
        ],
      ),
    );
  }
}

class _SingleAction extends StatelessWidget {
  final IconData icon;
  final String? label;

  const _SingleAction({
    super.key,
    required this.icon,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        splashColor: Colors.white.withOpacity(0.5),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              if (label != null)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      label!,
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
