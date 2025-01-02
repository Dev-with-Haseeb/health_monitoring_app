import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IntervalContainer extends StatelessWidget {
  const IntervalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(97, 161, 199, 130),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(FontAwesomeIcons.heartPulse),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  children: [
                    Text(
                      '851 ms',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      'R-R interval',
                      style: TextStyle(fontSize: 9),
                    ),
                  ],
                ),
                const Expanded(
                  child: SizedBox(
                    width: double.infinity,
                  ),
                ),
                const Icon(Icons.more_horiz)
              ],
            ),
            const SizedBox(height: 16,),
            const Row(
              children: [
                BottomBar(mainColor: Colors.black, mainText: '851',),
                BottomBar(mainColor: Colors.white, mainText: '861',),
                BottomBar(mainColor: Colors.white, mainText: '871',),
                BottomBar(mainColor: Colors.white, mainText: '881',),
              ],
            )
          ],
        ),
      ),
    );
  }
}


class BottomBar extends StatelessWidget {
  const BottomBar({super.key, required this.mainColor, required this.mainText,});

  final String mainText;
  final Color mainColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 2,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
                Text('$mainText ms')
              ],
            ),
      ),
    );
  }
}
