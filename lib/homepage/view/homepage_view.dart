import 'package:flutter/material.dart';
import 'package:gabriel_profile/widgets/appbar_widget.dart';
import 'package:gabriel_profile/chat/view/chat_widget.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFFF4F2EE),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0),
          child: AppBarWidgetHomePage(),
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ChatWidget()
              ),
            )
          ],
        ));
  }
}
