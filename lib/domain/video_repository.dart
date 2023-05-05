
import '../models/video_data.dart';

abstract class VideoRepository{
  Future<List<VideoData>> getVideos();
}