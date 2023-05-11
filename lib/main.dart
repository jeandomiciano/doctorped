import 'package:f1_challenge/pages/home_page.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa1.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa2.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa3.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa4.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa5.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa6.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa7.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa8.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa9.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa10.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa11.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa12.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa13.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa14.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa15.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa16.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa17.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa18.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa19.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa20.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa21.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa22.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa23.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa24.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa25.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa26.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa27.dart';
import 'package:f1_challenge/pages/pageBebeBaixa/idadebaixa28.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DoctorPed',
      theme: ThemeData(fontFamily: 'Fredoka'),
      debugShowCheckedModeBanner: false,
      home: const MoodyGradient(),
      routes: {
        'idadebaixa1': (context) => const idadebaixa1(),
        'idadebaixa2': (context) => const idadebaixa2(),
        'idadebaixa3': (context) => const idadebaixa3(),
        'idadebaixa4': (context) => const idadebaixa4(),
        'idadebaixa5': (context) => const idadebaixa5(),
        'idadebaixa6': (context) => const idadebaixa6(),
        'idadebaixa7': (context) => const idadebaixa7(),
        'idadebaixa8': (context) => const idadebaixa8(),
        'idadebaixa9': (context) => const idadebaixa9(),
        'idadebaixa10': (context) => const idadebaixa10(),
        'idadebaixa11': (context) => const idadebaixa11(),
        'idadebaixa12': (context) => const idadebaixa12(),
        'idadebaixa13': (context) => const idadebaixa13(),
        'idadebaixa14': (context) => const idadebaixa14(),
        'idadebaixa15': (context) => const idadebaixa15(),
        'idadebaixa16': (context) => const idadebaixa16(),
        'idadebaixa17': (context) => const idadebaixa17(),
        'idadebaixa18': (context) => const idadebaixa18(),
        'idadebaixa19': (context) => const idadebaixa19(),
        'idadebaixa20': (context) => const idadebaixa20(),
        'idadebaixa21': (context) => const idadebaixa21(),
        'idadebaixa22': (context) => const idadebaixa22(),
        'idadebaixa23': (context) => const idadebaixa23(),
        'idadebaixa24': (context) => const idadebaixa24(),
        'idadebaixa25': (context) => const idadebaixa25(),
        'idadebaixa26': (context) => const idadebaixa26(),
        'idadebaixa27': (context) => const idadebaixa27(),
        'idadebaixa28': (context) => const idadebaixa28()
      },
      //  home: const HomePage(),
    );
  }
}

class MoodyGradient extends StatelessWidget {
  const MoodyGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
        ),
        child: const HomePage(),
      ),
    );
  }
}
