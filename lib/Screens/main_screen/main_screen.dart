import 'package:flutter/material.dart';
import 'package:health_monitoring_app/Screens/home_screen/home_screen.dart';
import 'package:health_monitoring_app/Screens/home_screen/widgets/home_appbar.dart';
import 'package:health_monitoring_app/Screens/main_screen/widgets/main_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  PreferredSizeWidget currentAppBar = const HomeAppbar();
  Widget currentScreen = const HomeScreen();

  void updateScreen(Widget newScreen, PreferredSizeWidget newAppBar) {
    setState(() {
      currentScreen = newScreen;
      currentAppBar = newAppBar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: currentAppBar,
      body: Stack(
        children: [
        currentScreen,
        Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: MainNavigationBar(onIconPressed: updateScreen,),
          ),
        ],
      ),
    );
  }
}
