import 'package:f1_challenge/widgets/idadeMedia_container.dart';
import 'package:f1_challenge/widgets/idadebaixa_container.dart';
import 'package:f1_challenge/widgets/idadealta_container.dart';
import 'package:f1_challenge/widgets/referencias_container.dart';
import 'package:f1_challenge/widgets/header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final headerSize = MediaQuery.of(context).padding.top + 45 + 75;
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 0, 255, 234),
      body: Stack(
        children: [
          const Hero(
            tag: 'lash',
            child: SizedBox(
              width: 0,
              height: 0,
            ),
          ),
          Positioned(
            top: headerSize,
            bottom: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  IdadeBaixaContainer(size: size),
                  IdadeMediaContainer(size: size),
                  IdadeAltaContainer(size: size),
                  ReferenciasContainer(size: size),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'header',
                child: Header(isDark: false),
              ),
              _PageTitle(title: 'DoctorPED'),
            ],
          ),
        ],
      ),
    );
  }
}

class _PageTitle extends StatelessWidget {
  const _PageTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        height: 45,
        child: Text(
          title,
          style: const TextStyle(
            fontFamily: 'FredokaOne',
            color: Color.fromARGB(209, 76, 45, 150),
            fontSize: 40,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
      ),
    );
  }
}
