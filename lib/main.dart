import 'package:flutter/material.dart';
import 'core/constants/palette.dart';
import 'presentation/pages/home_page.dart';
// import 'presentation/pages/news_view_page.dart';
import './service_localator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUpService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme:
            const ColorScheme.light().copyWith(secondary: Palette.deepBlue),
      ),
      home: const HomePage(),
    );
  }
}
