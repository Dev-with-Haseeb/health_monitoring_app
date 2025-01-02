import 'package:flutter/material.dart';
import 'package:health_monitoring_app/Screens/heart_screen/widgets/battery_container.dart';
import 'package:health_monitoring_app/Screens/heart_screen/widgets/connection_container.dart';
import 'package:health_monitoring_app/Screens/heart_screen/widgets/device_container.dart';
import 'package:health_monitoring_app/Screens/heart_screen/widgets/image_container.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tracking\nyour heart',
            style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              BatteryContainer(),
              ImageContainer()
            ],
          ),
          DeviceContainer(),
          SizedBox(height: 5,),
          ConnectionContainer()
        ],
      ),
    );
  }
}
