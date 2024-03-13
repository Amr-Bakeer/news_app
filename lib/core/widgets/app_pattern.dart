import 'package:flutter/material.dart';

class AppPattern extends StatelessWidget {
  final Widget? child;

  const AppPattern({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/pattern.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
