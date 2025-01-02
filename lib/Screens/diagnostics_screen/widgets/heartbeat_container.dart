import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeartbeatContainer extends StatelessWidget {
  const HeartbeatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 188, 231, 240),
          borderRadius: BorderRadius.circular(30)),
      height: 260,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  height: 50,
                  width: 50,
                  child: const Icon(FontAwesomeIcons.heartPulse),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Heartbeat',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Expanded(
                  child: SizedBox(
                    width: double.infinity,
                  ),
                ),
                const Icon(Icons.more_horiz),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                // Large Text
                Text(
                  '82   ',
                  style: TextStyle(fontSize: 40,),
                ),
                // Smaller Text positioned at bottom right corner
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: Text(
                    'bpm',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Image.asset('assets/images/ecg.png',),
        ],
      ),
    );
  }
}
