import 'package:f1_challenge/models/driver_model.dart';
import 'package:flutter/material.dart';

class DriverCard extends StatelessWidget {
  const DriverCard({
    Key? key,
    required this.driver,
    required this.index,
  }) : super(key: key);

  final Driver driver;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      //eight: 70,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(144, 218, 198, 223),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: InkWell(
              onTap: () {
                //Navigator.pushNamed(context, driver.caminho);
                Navigator.of(context).pushNamed(driver.caminho);
              },
              child: Text(
                driver.name,
                style: const TextStyle(
                    color: Color.fromARGB(211, 68, 40, 133),
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
