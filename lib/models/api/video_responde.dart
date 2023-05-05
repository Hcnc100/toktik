

class VideoResponse{
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

    VideoResponse({
      required this.name,
      required this.videoUrl,
      required this.likes,
      required this.views,
    });

    factory VideoResponse.fromJson(Map<String, dynamic> json){
      return VideoResponse(
        name: json['name'],
        videoUrl: json['videoUrl'],
        likes: json['likes'],
        views: json['views'],
      );
    }
}