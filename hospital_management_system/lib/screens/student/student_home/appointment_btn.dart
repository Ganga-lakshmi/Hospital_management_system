import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hospital_management_system/screens/student/student_home/home_screen.dart';

class StudentAppointmentButton extends StatefulWidget {
  const StudentAppointmentButton({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AppointmentsState createState() => _AppointmentsState();
}

class _AppointmentsState extends State<StudentAppointmentButton> {
  // our form key
  final _formKey = GlobalKey<FormState>();

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  User? user = FirebaseAuth.instance.currentUser;
  var _name = "";
  var _idNumber = "";
  //error message
  String? errorMessage;

  // editing Controller
  final problemEditingController = TextEditingController();
  final spo2EditingController = TextEditingController();
  final tempEditingController = TextEditingController();
  final bpEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    firebaseFirestore.collection("students").doc(user!.uid).get().then((value) {
      setState(() {
        _name = value.data()!["firstName"] + " " + value.data()!["lastName"];
        _idNumber = value.data()!["idNumber"];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    //problem field
    final problemField = TextFormField(
        autofocus: false,
        controller: problemEditingController,
        keyboardType: TextInputType.name,
        validator: (value) {
          if (value!.isEmpty) {
            return ("problem cannot be Empty");
          }
          return null;
        },
        onSaved: (value) {
          problemEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          labelText: "Problem",
        ));

    //spo2 field
    final spo2Field = TextFormField(
        autofocus: false,
        controller: spo2EditingController,
        keyboardType: TextInputType.name,
        validator: (value) {
          if (value!.isEmpty) {
            return ("gender cannot be Empty");
          }
          return null;
        },
        onSaved: (value) {
          spo2EditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          labelText: "SpO2",
        ));

    //temperature field
    final tempField = TextFormField(
        autofocus: false,
        controller: tempEditingController,
        keyboardType: TextInputType.name,
        validator: (value) {
          if (value!.isEmpty) {
            return ("gender cannot be Empty");
          }
          return null;
        },
        onSaved: (value) {
          tempEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          labelText: "Temparature",
        ));

    //In bp field
    final bpField = TextFormField(
        autofocus: false,
        controller: bpEditingController,
        keyboardType: TextInputType.name,
        onSaved: (value) {
          bpEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          labelText: "BP",
        ));

    //signup button
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color.fromARGB(190, 155, 39, 176),
      child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            createAppointment();
          },
          child: const Text(
            "Book Appointment",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text("Create your Appointment"),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              // passing this to our root
              //Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StudentHomeScreen()));
            },
          ),
        ),
        body: Center(
            child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    problemField,
                    const SizedBox(height: 3),
                    tempField,
                    const SizedBox(height: 3),
                    spo2Field,
                    const SizedBox(height: 3),
                    bpField,
                    const SizedBox(height: 30),
                    signUpButton,
                  ],
                ),
              ),
            ),
          ),
        )));
  }

  void createAppointment() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = FirebaseAuth.instance.currentUser;
    if (_formKey.currentState!.validate()) {
      try {
        await firebaseFirestore.collection("appointments").doc(user!.uid).set({
          'aid': user.uid,
          'fullName': _name,
          'idNumber': _idNumber,
          'problem': problemEditingController.text,
          'temp': tempEditingController.text,
          'spo2': spo2EditingController.text,
          'bp': bpEditingController.text,
          'timeStamp': DateTime.now(),
        });
        Fluttertoast.showToast(msg: "Appointment created successfully :) ");

        Navigator.pushAndRemoveUntil(
            (context),
            MaterialPageRoute(builder: (context) => const StudentHomeScreen()),
            (route) => false);
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          case "network-request-failed":
            errorMessage = "Network connection not available.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
      }
    }
  }
}
