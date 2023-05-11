import 'package:f1_challenge/constants.dart';
import 'package:f1_challenge/models/driver_model.dart';
import 'package:f1_challenge/widgets/driver_card.dart';
import 'package:f1_challenge/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:f1_challenge/widgets/image_selected.dart';
import 'package:page_transition/page_transition.dart';

class idadebaixa19 extends StatelessWidget {
  const idadebaixa19({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String img1 = "assets/MedicDoses1.png";
    String img2 = "assets/MedicDoses2.png";
    String img3 = "assets/MedicDoses3.png";
    String img4 = "assets/MedicDoses4.png";
    String img5 = "assets/MedicDoses5.png";
    String img6 = "assets/MedicDoses6.png";
    String img7 = "assets/MedicDoses7.png";
    String img8 = "assets/MedicDoses8.png";
    String img9 = "assets/MedicDoses9.png";
    String img10 = "assets/MedicDoses10.png";
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
                      'PCR em Pediatria',
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
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ImageSelected(
                                                imagem: img1,
                                              ),
                                              type: PageTransitionType.fade));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 30),
                                      child: Image.asset(
                                        img1,
                                        width: size.width * .9,
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: EdgeInsets.all(size.width * .05),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ImageSelected(
                                                imagem: img2,
                                              ),
                                              type: PageTransitionType.fade));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 30),
                                      child: Image.asset(
                                        img2,
                                        width: size.width * .9,
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: EdgeInsets.all(size.width * .05),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ImageSelected(
                                                imagem: img3,
                                              ),
                                              type: PageTransitionType.fade));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 30),
                                      child: Image.asset(
                                        img3,
                                        width: size.width * .9,
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: EdgeInsets.all(size.width * .05),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ImageSelected(
                                                imagem: img4,
                                              ),
                                              type: PageTransitionType.fade));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 30),
                                      child: Image.asset(
                                        img4,
                                        width: size.width * .9,
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: EdgeInsets.all(size.width * .05),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ImageSelected(
                                                imagem: img5,
                                              ),
                                              type: PageTransitionType.fade));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 30),
                                      child: Image.asset(
                                        img5,
                                        width: size.width * .9,
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: EdgeInsets.all(size.width * .05),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ImageSelected(
                                                imagem: img6,
                                              ),
                                              type: PageTransitionType.fade));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 30),
                                      child: Image.asset(
                                        img6,
                                        width: size.width * .9,
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: EdgeInsets.all(size.width * .05),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ImageSelected(
                                                imagem: img7,
                                              ),
                                              type: PageTransitionType.fade));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 30),
                                      child: Image.asset(
                                        img7,
                                        width: size.width * .9,
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: EdgeInsets.all(size.width * .05),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ImageSelected(
                                                imagem: img8,
                                              ),
                                              type: PageTransitionType.fade));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 30),
                                      child: Image.asset(
                                        img8,
                                        width: size.width * .9,
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: EdgeInsets.all(size.width * .05),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ImageSelected(
                                                imagem: img9,
                                              ),
                                              type: PageTransitionType.fade));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 30),
                                      child: Image.asset(
                                        img9,
                                        width: size.width * .9,
                                      ),
                                    ),
                                  )),
                              Container(
                                  margin: EdgeInsets.all(size.width * .05),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ImageSelected(
                                                imagem: img10,
                                              ),
                                              type: PageTransitionType.fade));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 30),
                                      child: Image.asset(
                                        img10,
                                        width: size.width * .9,
                                      ),
                                    ),
                                  ))
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
