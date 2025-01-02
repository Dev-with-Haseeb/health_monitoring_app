import 'package:flutter/material.dart';

class BatteryContainer extends StatelessWidget {
  const BatteryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(104, 91, 177, 94),
            borderRadius: BorderRadius.circular(35),
          ),
          height: 185,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 4,),
                const Text(
                  '86%',
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
                const Text(
                  'battery',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Icon(Icons.flash_on),
                          SizedBox(height: 10,),
                          SmallContainer(),
                          SizedBox(height: 4,),
                          SmallContainer(),
                          SizedBox(height: 4,),
                          SmallContainer(),
                          SizedBox(height: 4,),
                          SmallContainer(),
                          SizedBox(height: 4,),
                          SmallContainer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SmallContainer extends StatelessWidget {
  const SmallContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(104, 91, 177, 94),
          borderRadius: BorderRadius.circular(30)),
      height: 4,
      width: double.infinity,
    );
  }
}
