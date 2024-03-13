import 'package:flutter/material.dart';
import 'package:news_app/core/widgets/app_pattern.dart';
import 'package:news_app/main.dart';

import '../../../core/config/pages_route_name.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () => navigatorKey.currentState!
          .pushReplacementNamed(PagesRouteName.homeView),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppPattern(
      child: Image.asset("assets/images/logo.png"),
    );
  }
}
