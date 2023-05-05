


import 'package:tok_tik/models/api/video_responde.dart';

List<Map<String, dynamic>> _videoPosts = [
  {
    'name': 'Subiendo escaleras automáticas',
    'videoUrl': 'assets/videos/1.mp4',
    'likes': 23230,
    'views': 1523,
  },
  {
    'name': 'Planta apreciada por peatones',
    'videoUrl': 'assets/videos/2.mp4',
    'likes': 24230,
    'views': 1343,
  },
  {
    'name': 'Que borroso veo todo!',
    'videoUrl': 'assets/videos/3.mp4',
    'likes': 21564320,
    'views': 123563,
  },
  {
    'name': '¿Esto es trigo? que interesante',
    'videoUrl': 'assets/videos/4.mp4',
    'likes': 320,
    'views': 2300,
  },
  {
    'name': 'El COVID no me afecta',
    'videoUrl': 'assets/videos/5.mp4',
    'likes': 3230,
    'views': 31030,
  },
  {
    'name': 'No quiero ir a trabajar hoy señor Stark',
    'videoUrl': 'assets/videos/6.mp4',
    'likes': 10,
    'views': 330,
  },
  {
    'name': 'Limpiar nunca fue tan divertido',
    'videoUrl': 'assets/videos/7.mp4',
    'likes': 1320,
    'views': 33032,
  },
  {
    'name': '¿Ya llegamos a la India?... umm si',
    'videoUrl': 'assets/videos/8.mp4',
    'likes': 342,
    'views': 3332,
  },
    {
    'name': 'Texto aleatorio para el video 9',
    'videoUrl': 'assets/videos/9.mp4',
    'likes': 132242,
    'views': 132332,
  },
    {
    'name': 'Texto aleatorio para el video 10',
    'videoUrl': 'assets/videos/10.mp4',
    'likes': 422,
    'views': 32772,
  },


];

class VideoServices{
      Future<List<VideoResponse>> requestAllVideo() async {
          await Future.delayed(const Duration(seconds: 1));
          final response = _videoPosts;
          return response.map((e) => VideoResponse.fromJson(e)).toList();
      }
}