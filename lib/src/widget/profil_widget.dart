import 'package:flutter/material.dart';

class ProfilWidget extends StatefulWidget {
  const ProfilWidget({super.key});

  @override
  State<ProfilWidget> createState() => _ProfilWidgetState();
}

class _ProfilWidgetState extends State<ProfilWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Color(0xFFC82A3C)],
              stops: [0.5, 1])),
    );
  }
}
