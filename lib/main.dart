import 'package:flutter/material.dart';
import 'package:gabriel_profile/homepage/view/homepage_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gabriel Dev Flutter',
      debugShowCheckedModeBanner: false,
      home: HomePageView(),
    );
  }
}