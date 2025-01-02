import 'package:flutter/material.dart';

class ResultsContainer extends StatelessWidget {
  const ResultsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(185, 238, 236, 236),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/stress_recovery.png',
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Results',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'You are calm and ready!',
                  style: TextStyle(fontSize: 11),
                ),
                Row(
                  children: [
                    StressRecoveryContainer(
                      containerColor: Color.fromARGB(160, 251, 225, 133),
                      containerText: 'Stress',
                    ),
                    StressRecoveryContainer(
                      containerColor: Color.fromARGB(160,188,231,240),
                      containerText: 'Recovery',
                    ),
                  ],
                )
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.info_outline),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StressRecoveryContainer extends StatelessWidget {
  const StressRecoveryContainer(
      {super.key, required this.containerColor, required this.containerText});

  final Color containerColor;
  final String containerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(20)),
      child: Text('• $containerText'),
    );
  }
}
