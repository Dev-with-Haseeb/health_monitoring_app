import 'package:flutter/material.dart';

class ConnectionContainer extends StatelessWidget {
  const ConnectionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(186, 251, 225, 133),
          borderRadius: BorderRadius.circular(50)),
      width: double.infinity,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)
              ),
              height: 50,
              width: 50,
              child: const Icon(
                Icons.watch,
                color: Colors.black,
              ),
            ),
            const Expanded(child: SizedBox(width: double.infinity,),),
            const Text('Connect'),
            const SizedBox(width: 10,),
            const Text('>', style: TextStyle(color: Color.fromARGB(226, 206, 204, 204),),),
            const Text('>', style: TextStyle(color: Color.fromARGB(255, 168, 168, 168),),),
            const Text('>'),
            const Expanded(child: SizedBox(width: double.infinity,),),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)
              ),
              height: 50,
              width: 50,
              child: const Icon(
                Icons.watch,
                color: Color.fromARGB(176, 223, 221, 221),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
