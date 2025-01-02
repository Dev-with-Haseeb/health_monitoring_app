import 'package:flutter/material.dart';

class MainIcon extends StatelessWidget {
  const MainIcon({super.key, required this.presentIcon});

  final Icon presentIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(175, 241, 239, 239),
          borderRadius: BorderRadius.circular(50)
        ),
        child: presentIcon,
      ),
    );
  }
}
