import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 240, 239, 239),
            
          ),
          child: IconButton(
            icon: const Icon(
              Icons.notifications_none,
              size: 24,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            width: 8, // Dot width
            height: 8, // Dot height
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
