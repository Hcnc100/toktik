

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tok_tik/domain/video_repository.dart';
import 'package:tok_tik/ui/screens/video/view_model/video_state.dart';

class VideoViewModel extends StateNotifier<VideoState> {
  final VideoRepository _videoRepository;


  VideoViewModel(VideoState state,{
    required VideoRepository videoRepoImpl,
  }) : _videoRepository = videoRepoImpl, super(state){
    loadVideos();
  }

  Future<void> loadVideos() async {
    final response=await _videoRepository.getVideos();
    state=state.copyWith(videos: response,isFristRequest: false);
  }

}