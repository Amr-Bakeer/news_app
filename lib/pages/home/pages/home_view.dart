import 'package:flutter/material.dart';
import 'package:news_app/core/widgets/app_pattern.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPattern(
      child: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}
