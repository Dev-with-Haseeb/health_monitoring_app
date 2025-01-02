import 'package:flutter/cupertino.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(CupertinoIcons.profile_circled,
          size: 120,),
          Text('Profile',
          style: TextStyle(fontSize: 20,),)
        ],
      ),
    );
  }
}