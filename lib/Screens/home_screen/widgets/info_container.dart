import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer(
      {super.key,
      required this.mainIcon,
      required this.firstText,
      required this.mainText,
      required this.subText});

  final Icon mainIcon;
  final String firstText;
  final String mainText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        child: Container(
          height: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(87, 224, 230, 235)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                  child: mainIcon,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  firstText,
                  style: const TextStyle(fontSize: 12),
                ),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Text(
                      '$mainText     ',
                      style: const TextStyle(fontSize: 30),
                    ),
                    Positioned(
                      right: 0,
                      top: 5,
                      child: Text(
                        subText,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
