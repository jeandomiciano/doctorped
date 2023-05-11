import 'package:f1_challenge/constants.dart';
import 'package:f1_challenge/models/driver_model.dart';
import 'package:f1_challenge/widgets/driver_card.dart';
import 'package:f1_challenge/widgets/header.dart';
import 'package:flutter/material.dart';

class ReferenciasPage extends StatelessWidget {
  const ReferenciasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      'Referências ',
                      style: TextStyle(
                        color: Color.fromARGB(211, 68, 40, 133),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
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
                                      ' Para o desenvolvimento desse aplicativo foram utilizadas as seguintes referências:\n\n'
                                      ' ⦁	ALMEIDA, MFB; GUINSBURG R; Coordenadores Estaduais e Grupo Executivo PRN-SBP; Conselho Científico Departamento Neonatologia SBP. Reanimação do recém-nascido ≥34 semanas em sala de parto: diretrizes 2022 da Sociedade Brasileira de Pediatria. Rio de Janeiro: Sociedade Brasileira de Pediatria; 2022.\n\n'
                                      ' ⦁	Brasil. Ministério da Saúde. Secretaria de Atenção à Saúde. Departamento de Ações Programáticas Estratégicas. Atenção à saúde do recém-nascido : guia para os profissionais de saúde / Ministério da Saúde, Secretaria de Atenção à Saúde, Departamento de Ações Programáticas Estratégicas. – 2. ed. – Brasília : Ministério da Saúde, 2012.\n\n'
                                      ' ⦁	Brasil. Ministério da Saúde. Secretaria de Atenção à Saúde. Protocolos de Intervenção para o SAMU 192 - Serviço de Atendimento Móvel de Urgência. Brasília: Ministério da Saúde, 2016.\n\n'
                                      ' ⦁	Disque,Karl. PALS Pediatric life support. Provider Handbook. Satori Continuum Publishing, 2021.\n\n'
                                      ' ⦁	PALS. Suporte Avançado de Vida em Pediatria. Manual do Profissional PALS da American Heart Association e American Academy of Pediatrics. 2010.\n\n'
                                      ' ⦁	MAESTRI, Dra. Daniela dal Forno. Sugestão de doses em pediatria através de dicas e macetes. COORD. EMERGÊNCIA PED Hospital Luis França. Disponível em: https://www.studocu.com/pt-br/document/universidade-brasil/pediatria/macetes-medicacoes-pediatria/9466805. Acesso em: 29 ago. 2022.\n\n',
                                      style: TextStyle(
                                        color: Color.fromARGB(211, 68, 40, 133),
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                      ))),
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
          idadeAltaModals.length,
          (index) => Column(
            children: [
              DriverCard(
                driver: idadeAltaModals[index],
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
