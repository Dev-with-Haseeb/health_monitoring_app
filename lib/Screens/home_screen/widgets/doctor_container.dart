import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorContainer extends StatelessWidget {
  const DoctorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(186, 251, 225, 133),
          borderRadius: BorderRadius.circular(50)),
      height: 70,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: ClipOval(
                child: Image.asset(
              'assets/images/doctor.jpg',
              width: 55,
              height: 55,
            )),
          ),
          const Padding(
            padding: EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Albert Fox',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                Text('Cardiologist')
              ],
            ),
          ),
          const Expanded(child: SizedBox(width: double.infinity,)),
          const IconWidget(mainIcon: Icon(
          FontAwesomeIcons.message,
        ),),
          const IconWidget(mainIcon: Icon(
          CupertinoIcons.phone,
        ),),
        ],
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, required this.mainIcon});

  final Icon mainIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50)
        ),
        height: 50,
        width: 50,
        child: mainIcon,
      ),
    );
  }
}
