import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injector/injector.dart';
import 'package:tok_tik/domain/video_repository.dart';
import 'package:tok_tik/models/video_data.dart';
import 'package:tok_tik/ui/screens/video/view_model/video_view_model.dart';


part 'video_state.freezed.dart';

@freezed
class VideoState with _$VideoState {
  const factory VideoState({
    @Default([]) List<VideoData> videos,
    @Default(0) int currentIndex,
    @Default(false) bool isPlaying,
    @Default(true) bool isFristRequest,
    @Default(false) bool isConcateated,
  }) = _VideoState;
}

final videoViewModelProvider =
    StateNotifierProvider.autoDispose<VideoViewModel, VideoState>(
  (ref) => VideoViewModel(
    const VideoState(),
    videoRepoImpl: Injector.appInstance.get<VideoRepository>(),
  ),
);


final isFirstRequestProvider = Provider.autoDispose<bool>((ref) {
  final isFirstRequest = ref.watch(videoViewModelProvider).isFristRequest;
  return isFirstRequest;
});
