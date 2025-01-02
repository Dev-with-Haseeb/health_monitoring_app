import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(104, 91, 174, 177),
            borderRadius: BorderRadius.circular(35),
            image: const DecorationImage(
              image: AssetImage('assets/images/watch.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          height: 185,
        ),
      ),
    );
  }
}
