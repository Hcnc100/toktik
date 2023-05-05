

import 'package:tok_tik/datasource/video_remote_data_source.dart';
import 'package:tok_tik/domain/video_repository.dart';
import 'package:tok_tik/models/video_data.dart';

class VideoRepoImpl implements VideoRepository{

    final VideoRemoteDataSource _videoRemoteDataSource;

    VideoRepoImpl({required VideoRemoteDataSource videoRemoteDataSource})
      : _videoRemoteDataSource = videoRemoteDataSource;

  @override
  Future<List<VideoData>> getVideos() => _videoRemoteDataSource.getVideos();

}