import 'package:flutter/material.dart';
import 'package:hospital_management_system/screens/doctor/login_screen.dart';
import 'package:hospital_management_system/screens/student/login_screen.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final studentButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color.fromARGB(190, 155, 39, 176),
      child: MaterialButton(
          minWidth: 200.0,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const StudentLoginScreen()),
            );
          },
          child: const Text(
            "Student",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );
    final doctorButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color.fromARGB(190, 155, 39, 176),
      child: MaterialButton(
          minWidth: 200.0,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const DoctorLoginScreen()),
            );
          },
          child: const Text(
            "Doctor",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );
    // final pharmacistButton = Material(
    //   elevation: 5,
    //   borderRadius: BorderRadius.circular(30),
    //   color: const Color.fromARGB(190, 155, 39, 176),
    //   child: MaterialButton(
    //       minWidth: 200.0,
    //       onPressed: () {},
    //       child: const Text(
    //         "Pharmacist",
    //         textAlign: TextAlign.center,
    //         style: TextStyle(
    //             fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
    //       )),
    // );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.fromLTRB(30.0, 80.0, 10.0, 30.0),
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // SizedBox(height: 25),
                  Text(
                    "Welcome to HMS",
                    style: TextStyle(
                        fontSize: 30.0,
                        foreground: Paint()
                          ..style = PaintingStyle.fill
                          ..strokeWidth = 6
                          ..color = Colors.purple),
                  ),
                  const SizedBox(height: 45),
                  SizedBox(
                      height: 200,
                      child: Image.asset(
                        "assets/logo.png",
                        fit: BoxFit.contain,
                      )),

                  const SizedBox(height: 35),
                  const Text(
                    "Are you a____? ",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 20),
                  studentButton,
                  const SizedBox(height: 25),
                  doctorButton,
                  // const SizedBox(height: 25),
                  // pharmacistButton,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
