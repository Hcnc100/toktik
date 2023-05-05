import 'package:injector/injector.dart';
import 'package:tok_tik/data/remote/video_services.dart';
import 'package:tok_tik/datasource/video_remote_data_sorce_impl.dart';
import 'package:tok_tik/datasource/video_remote_data_source.dart';
import 'package:tok_tik/domain/video_repo_impl.dart';
import 'package:tok_tik/domain/video_repository.dart';

class Inject {
  static void injectAll() {
    injectServices();
    injectDataSource();
    injectRepository();
  }

  static void injectServices() {
    Injector.appInstance
        .registerSingleton<VideoServices>(() => VideoServices());
  }

  static void injectDataSource() {
    Injector.appInstance.registerSingleton<VideoRemoteDataSource>(
        () => VideoRemoteDataSourceImpl(
            videoServices: Injector.appInstance.get<VideoServices>()));
  }

  static void injectRepository() {
    Injector.appInstance.registerSingleton<VideoRepository>(() => VideoRepoImpl(
        videoRemoteDataSource:
            Injector.appInstance.get<VideoRemoteDataSource>()));
  }



}
