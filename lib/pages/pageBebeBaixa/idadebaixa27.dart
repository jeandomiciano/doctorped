import 'package:f1_challenge/constants.dart';
import 'package:f1_challenge/models/driver_model.dart';
import 'package:f1_challenge/widgets/driver_card.dart';
import 'package:f1_challenge/widgets/header.dart';
import 'package:flutter/material.dart';

class idadebaixa27 extends StatelessWidget {
  const idadebaixa27({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String img1 = "assets/PCRemPediatria1.png";
    String img2 = "assets/PCRemPediatria2.png";
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // White background
          TweenAnimationBuilder<double>(
            duration: duration,
            tween: Tween(begin: 1, end: 0),
            builder: (context, double value, _) {
              return Hero(
                tag: 'drivers_container',
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(value * 20),
                  ),
                ),
              );
            },
          ),
          // Pilot image
          Transform.translate(
            offset: Offset(size.width * 2, 0),
            child: Hero(
              tag: 'idadebaixa',
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/nene0a4anos.png',
                  width: size.width * .8,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.maybePop(context),
                child: const Hero(tag: 'header', child: Header(isDark: true)),
              ),
              const Hero(
                tag: 'drivers',
                child: Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      'Sinais de choque',
                      style: TextStyle(
                        color: Color.fromARGB(211, 68, 40, 133),
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TweenAnimationBuilder<double>(
                  duration: duration,
                  tween: Tween(begin: 5, end: 1),
                  builder: (context, double value, _) {
                    if (value < 1.0) {
                      return const SizedBox.shrink();
                    }
                    return TweenAnimationBuilder<double>(
                      duration: duration,
                      tween: Tween(begin: size.height, end: 0),
                      curve: Curves.easeOutCubic,
                      builder: (context, value, _) {
                        return Transform.translate(
                          offset: Offset(0, value),
                          child: SingleChildScrollView(
                            child: Column(children: <Widget>[
                              Container(
                                  margin: EdgeInsets.all(size.width * .05),
                                  child: const Text(
                                      '⦁	Pele fria, úmida e/ou pegajosa.\n\n'
                                      '⦁	Pele pálida ou cianótica.\n\n'
                                      '⦁	Pressão arterial diminuída = Pressão arterial sistêmica menor que 90 mmHg.\n\n'
                                      '⦁	Nível de consciência alterado.\n\n'
                                      '⦁	Enchimento capilar maior que 2 segundos.\n\n'
                                      '⦁	Frequência cardíaca superior que 100 bpm.\n\n'
                                      '⦁	Frequência respiratória menor que 8 mrm ou superior a 28 mrm.\n\n',
                                      style: TextStyle(
                                        color: Color.fromARGB(211, 68, 40, 133),
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                      ))),
                              // Container(
                              //   padding: EdgeInsets.only(bottom: 30),
                              //   child: Image.asset(
                              //     'assets/tabelaAPGAR.png',
                              //     width: size.width * .9,
                              //   ),
                              // )
                            ]),
                          ),
                        );
                      },
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _DriversList extends StatefulWidget {
  const _DriversList({
    Key? key,
  }) : super(key: key);

  @override
  State<_DriversList> createState() => _DriversListState();
}

class _DriversListState extends State<_DriversList> {
  bool isScrolling = false;

  _onStartScroll() {
    setState(() {
      isScrolling = true;
    });
    Future.delayed(const Duration(milliseconds: 700), () {
      setState(() {
        isScrolling = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _onStartScroll();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is ScrollStartNotification) {
          _onStartScroll();
        }
        return true;
      },
      child: ListView(
        padding: const EdgeInsets.all(16).copyWith(top: 32),
        children: List.generate(
          drivers.length,
          (index) => Column(
            children: [
              DriverCard(
                driver: drivers[index],
                index: index,
              ),
              AnimatedSize(
                duration: duration,
                curve: Curves.ease,
                child: SizedBox(
                  height: isScrolling ? 40 : 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
