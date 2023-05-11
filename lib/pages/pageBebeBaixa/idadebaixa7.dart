import 'package:f1_challenge/constants.dart';
import 'package:f1_challenge/models/driver_model.dart';
import 'package:f1_challenge/widgets/driver_card.dart';
import 'package:f1_challenge/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:f1_challenge/widgets/image_selected.dart';
import 'package:page_transition/page_transition.dart';

class idadebaixa7 extends StatelessWidget {
  const idadebaixa7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String img = "assets/imagemTela7p1.png";
    String img2 = "assets/imagemtela7p2.png";
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
                      'Opções de mascara para VPP',
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
                              // Container(
                              //     margin: EdgeInsets.all(size.width * .05),
                              //     child: Text(
                              //         '⦁	Máscara facial\n\n'
                              //         '	-> É a mais utilizada\n\n'
                              //         '⦁	há 3 tamanhos:\n\n'
                              //         '⦁	para o RN a termo,\n\n'
                              //         '⦁	para o prematuro\n\n'
                              //         '⦁	e para o prematuro extremo\n\n'
                              //         '⦁	há 2 formatos:\n\n'
                              //         '⦁	redondo\n\n'
                              //         '⦁	anatômico\n\n'
                              //         '⦁	A mascara deve ser ajustada adequadamente fazendo com que cubra a ponta do queixo, a boca e o nariz.\n\n'
                              //         '⦁	Ela deve ser posta no sentido do queixo para nariz, envolvendo as bordas com os dedos indicador e polegar,'
                              //         ' assim formanco um “C”, posteriormente aplicando uma leve pressão na borda enquanto os dedos médio, anular e mínimo formam a letra “E”.\n\n'
                              //         '⦁	máscara laríngea\n\n'
                              //         '⦁	Deve ser inserida pela boca e avançada até que a máscara recubra a glote\n\n'
                              //         '⦁	A manobra é feita de forma manual\n\n'
                              //         '⦁	pode ser considerada como interface para a VPP antes da intubação traqueal\n\n'
                              //         '⦁	O menor tamanho da máscara laríngea é o neonatal, indicado para RN ≥34 semanas e/ou com peso ≥ 2000g\n\n'
                              //         '⦁	cânula traqueal\n\n'
                              //         '⦁	É a opção utilizada na reanimação avançada do RN em sala de parto\n\n'
                              //         '⦁	Para intubação é necessário o uso de cânulas adequadas e materiais específicos e apropriados para a inserção.\n\n'
                              //         '⦁	Deve ser realizado por um profissional apto.\n\n',
                              //         style: TextStyle(
                              //           color: Color.fromARGB(211, 68, 40, 133),
                              //           fontSize: 30,
                              //           fontWeight: FontWeight.w500,
                              //         ))),
                              Container(
                                  margin: EdgeInsets.all(size.width * .05),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ImageSelected(
                                                imagem: img,
                                              ),
                                              type: PageTransitionType.fade));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 30),
                                      child: Image.asset(
                                        img,
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
