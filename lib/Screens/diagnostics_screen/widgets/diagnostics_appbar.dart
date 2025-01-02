import 'package:flutter/material.dart';
import 'package:health_monitoring_app/Screens/diagnostics_screen/widgets/main_icon.dart';

class DiagnosticsAppbar extends StatelessWidget implements PreferredSizeWidget{
  const DiagnosticsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: AppBar(
          leading: const Icon(Icons.keyboard_arrow_left, size: 30,),
          actions:  const [
            MainIcon(presentIcon: Icon(Icons.file_copy_outlined),),
            MainIcon(presentIcon: Icon(Icons.arrow_upward),),
          ],
        ),
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(80);
}