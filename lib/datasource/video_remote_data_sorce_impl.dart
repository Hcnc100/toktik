

import 'package:tok_tik/data/remote/video_services.dart';
import 'package:tok_tik/datasource/video_remote_data_source.dart';
import 'package:tok_tik/models/video_data.dart';

class VideoRemoteDataSourceImpl implements VideoRemoteDataSource{

  final VideoServices _videoServices;

  VideoRemoteDataSourceImpl({required VideoServices videoServices})
    : _videoServices = videoServices;

  @override
  Future<List<VideoData>> getVideos() async {
    final response = await _videoServices.requestAllVideo();
    return response.map((videoResponse) => VideoData.fromVideoResponse(videoResponse)).toList();
  }

}