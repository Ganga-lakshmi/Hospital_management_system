import 'package:flutter/material.dart';
import 'package:hospital_management_system/screens/student/student_home/home_btn.dart';
import 'package:hospital_management_system/screens/student/student_home/appointment_btn.dart';
import 'package:hospital_management_system/screens/student/student_home/profile_btn.dart';
import 'package:hospital_management_system/screens/student/student_home/records_btn.dart';

class StudentHomeScreen extends StatefulWidget {
  const StudentHomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<StudentHomeScreen> {

  int currentIndex = 0; // default homepage
  final screens = [const StudentHomeButton(), const StudentAppointmentButton(), const StudentRecordButton(), const StudentProfileButton()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex], //body move to correct page
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 119, 12, 138),
          selectedItemColor: const Color.fromARGB(234, 194, 103, 247),
          unselectedItemColor: Colors.white,
          // showSelectedLabels: false,
          iconSize: 25,
          // selectedFontSize: 20,
          // unselectedFontSize: 15,
          currentIndex: currentIndex, //to select the icons
          onTap: (index) => setState(() => currentIndex = index),
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.purple,
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              label: 'Appointment',
              backgroundColor: Colors.purple,
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: 'Records',
              backgroundColor: Colors.purple,
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.purple,
            ),
          ]),
    );
  }
}