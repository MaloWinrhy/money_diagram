import 'package:flutter/material.dart';

class CustomPage extends StatelessWidget {
  final Widget body;
  const CustomPage({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Color(0xFFC82A3C)],
              stops: [0.5, 1])),
      child: Scaffold(
        body: body,
      ),
    );
  }
}
