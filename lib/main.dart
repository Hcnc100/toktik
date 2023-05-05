import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tok_tik/inject/inject.dart';
import 'package:tok_tik/ui/screens/video/video_screen.dart';
void main() {
   WidgetsFlutterBinding.ensureInitialized();
   Inject.injectAll();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: VideoScreen(),
    );
  }
}