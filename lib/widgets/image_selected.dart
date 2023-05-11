import 'package:flutter/material.dart';

class ImageSelected extends StatelessWidget {
  final String imagem;

  const ImageSelected({super.key, required this.imagem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: InteractiveViewer(
          child: Center(child: Container(child: Image.asset(imagem)))),
    );
  }
}
