
import 'package:tok_tik/models/video_data.dart';

abstract class VideoRemoteDataSource{
  Future<List<VideoData>> getVideos();
}