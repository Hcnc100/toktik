

import 'package:tok_tik/models/api/video_responde.dart';

class VideoData{
    final String name;
    final String url;
    final int likes;
    final int views;

    VideoData({
      required this.name,
      required this.url,
      required this.likes,
      required this.views,
    });


    String get showLikes{
      if(likes>1000000){
        return '${(likes/1000000).toStringAsFixed(1)}M';
      }else if(likes>1000){
        return '${(likes/1000).toStringAsFixed(1)}K';
      }else{
        return likes.toString();
      }
    }

    String get showViews{
      if(views>1000000){
        return '${(views/1000000).toStringAsFixed(1)}M';
      }else if(views>1000){
        return '${(views/1000).toStringAsFixed(1)}K';
      }else{
        return views.toString();
      }
    }

    factory VideoData.fromVideoResponse(VideoResponse videoResponse){
      return VideoData(
        name: videoResponse.name,
        url: videoResponse.videoUrl,
        likes: videoResponse.likes,
        views: videoResponse.views,
      );
    }
}