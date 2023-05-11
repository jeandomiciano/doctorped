import 'package:f1_challenge/constants.dart';
import 'package:f1_challenge/pages/idadeAlta_page.dart';
import 'package:flutter/material.dart';

class IdadeAltaContainer extends StatelessWidget {
  const IdadeAltaContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.width * .7,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, _) {
                  return FadeTransition(
                    opacity: animation,
                    child: const IdadeAltaPage(),
                  );
                },
                transitionDuration: duration,
                reverseTransitionDuration: duration,
              ),
            );
          },
          child: Stack(
            children: [
              Hero(
                tag: 'idadealta_container',
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(144, 218, 198, 223),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const Hero(
                tag: 'idadeAlta',
                child: Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      '13 - 19 anos',
                      style: TextStyle(
                        color: Color.fromARGB(211, 68, 40, 133),
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Hero(
                tag: 'jovem',
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'assets/babyIndo.png',
                    width: size.width * .5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
