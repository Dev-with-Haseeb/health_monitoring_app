import 'package:flutter/material.dart';
import 'package:health_monitoring_app/Screens/diagnostics_screen/widgets/heartbeat_container.dart';
import 'package:health_monitoring_app/Screens/diagnostics_screen/widgets/interval_container.dart';
import 'package:health_monitoring_app/Screens/diagnostics_screen/widgets/results_container.dart';

class DiagnosticsScreen extends StatelessWidget {
  const DiagnosticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Diagnostics', style: TextStyle(fontSize: 35),),
          SizedBox(height: 20,),
          HeartbeatContainer(),
          SizedBox(height: 5,),
          IntervalContainer(),
          SizedBox(height: 5,),
          ResultsContainer(),
        ],
      ),
    );
  }
}