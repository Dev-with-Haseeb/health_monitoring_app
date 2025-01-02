import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DiagnosisContainer extends StatelessWidget {
  const DiagnosisContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(233, 213, 245, 222),
          borderRadius: BorderRadius.circular(20)),
      width: double.infinity,
      height: 240,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      width: 50,
                      height: 50,
                      child: const Icon(
                        CupertinoIcons.heart,
                      ),
                    ),
                    const Text(
                      'Health',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text('Last Diagnosis of heart 3 Days ago'),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black,
                        side: const BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      child: const Text('Diagnosis'),
                    ),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/heart.jpg',
              ),
            )
          ],
        ),
      ),
    );
  }
}
