import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_monitoring_app/Screens/home_screen/widgets/diagnosis_container.dart';
import 'package:health_monitoring_app/Screens/home_screen/widgets/doctor_container.dart';
import 'package:health_monitoring_app/Screens/home_screen/widgets/info_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Heart Health',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              DiagnosisContainer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoContainer(
                    firstText: 'Heart pressure',
                    mainText: '123',
                    subText: '/80',
                    mainIcon: Icon(FontAwesomeIcons.stethoscope),
                  ),
                  InfoContainer(
                    firstText: 'Heart rhythm',
                    mainText: '67',
                    subText: '/min',
                    mainIcon: Icon(FontAwesomeIcons.heart),
                  ),
                ],
              ),
              DoctorContainer()
            ],
          ),
        );
  }
}
