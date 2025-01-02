import 'package:flutter/material.dart';
import 'package:health_monitoring_app/Screens/diagnostics_screen/diagnostics_screen.dart';
import 'package:health_monitoring_app/Screens/diagnostics_screen/widgets/diagnostics_appbar.dart';
import 'package:health_monitoring_app/Screens/heart_screen/heart_screen.dart';
import 'package:health_monitoring_app/Screens/heart_screen/widgets/heart_appbar.dart';
import 'package:health_monitoring_app/Screens/home_screen/home_screen.dart';
import 'package:health_monitoring_app/Screens/home_screen/widgets/home_appbar.dart';
import 'package:health_monitoring_app/Screens/profile_screen/profile_screen.dart';
import 'package:health_monitoring_app/Screens/profile_screen/widgets/profile_appbar.dart';

class MainNavigationBar extends StatelessWidget {
  const MainNavigationBar({super.key, required this.onIconPressed,});

   final Function(Widget, PreferredSizeWidget) onIconPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 245, 242, 242),
            borderRadius: BorderRadius.circular(50),
            
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNavItem(Icons.home_outlined, Colors.black, Colors.white, const HomeScreen(), const HomeAppbar()),
              _buildNavItem(Icons.add, Colors.black, Colors.white, const DiagnosticsScreen(), const DiagnosticsAppbar()),
              _buildNavItem(Icons.favorite_border, Colors.black, Colors.white, const HeartScreen(), const HeartAppbar()),
              _buildNavItem(Icons.person_outline, Colors.black, Colors.white, const ProfileScreen(), const ProfileAppbar()),
            ],
          ),
        ),
    );
  }

  Widget _buildNavItem(IconData icon, Color iconColor, Color bgColor, Widget targetScreen, PreferredSizeWidget targetAppBar) {
    return InkWell(
      onTap: ()=> onIconPressed(targetScreen, targetAppBar),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor,
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: 24,
        ),
      ),
    );
  }
}


