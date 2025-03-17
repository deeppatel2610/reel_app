import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:reel_app/provider/video_provider.dart';
import 'package:reel_app/screens/home/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (context) => ShareProvider()),
        ChangeNotifierProvider(create: (context) => LikeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
