import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_monitoring_app/Screens/heart_screen/widgets/notification_icon.dart';

class ProfileAppbar extends StatelessWidget implements PreferredSizeWidget{
  const ProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: AppBar(
          leading: ClipOval(
            child: Image.asset(
              'assets/images/profile_image.jpg',
            ),
          ),
          title: Text(
            'Hello, David!',
            style: GoogleFonts.lato(
              fontSize: 20,
            ),
          ),
          actions: const [NotificationIcon()],
        ),
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(80);
}