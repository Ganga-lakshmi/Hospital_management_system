import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hospital_management_system/screens/welcome.dart';

class StudentProfileButton extends StatefulWidget {
  const StudentProfileButton({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<StudentProfileButton> {
  bool isEnbled = false;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  User? user = FirebaseAuth.instance.currentUser;

  var _name = "";
  var _email = "";
  var _idNumber = "";
  var _gender = "";
  var _phone = "";
  var _course = "";
  // string for displaying the error Message
  String? errorMessage;

  // our form key
  final _formKey = GlobalKey<FormState>();
  // editing Controller

  final double coverHeight = 280; //profile bg height
  final double profileHeight = 144; //pofile height

  @override
  void initState() {
    super.initState();
    firebaseFirestore.collection("students").doc(user!.uid).get().then((value) {
      setState(() {
        _email = value.data()!["email"];
        _name = value.data()!["firstName"] + " " + value.data()!["lastName"];
        _idNumber = value.data()!["idNumber"];
        _gender = value.data()!["gender"];
        _phone = value.data()!["phoneNumber"];
        _course = value.data()!["course"];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final fullNameEditingController = TextEditingController(text: _name);
    final idNumberEditingController = TextEditingController(text: _idNumber);
    final genderEditingController = TextEditingController(text: _gender);
    final courseEditingController = TextEditingController(text: _course);
    final phoneNumberEditingController = TextEditingController(text: _phone);
    final emailEditingController = TextEditingController(text: _email);

    //first name field
    final fullNameField = TextFormField(
        autofocus: false,
        enabled: false,
        controller: fullNameEditingController,
        keyboardType: TextInputType.name,
        onSaved: (value) {
          fullNameEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          fillColor: const Color.fromARGB(221, 207, 207, 207),
          filled: true,
          prefixIcon: const Icon(Icons.account_circle),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "name",
          border: myinputborder(),
          enabledBorder: myinputborder(),
          focusedBorder: myfocusborder(),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ));

    //idnum field
    final idnumField = TextFormField(
        autofocus: false,
        enabled: false,
        controller: idNumberEditingController,
        keyboardType: TextInputType.name,
        // validator: (value) {
        //   if (value!.isEmpty) {
        //     return ("Id cannot be Empty");
        //   }
        //   return ("enter your id");
        // },
        onSaved: (value) {
          idNumberEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          hintText: "Id Nunber",
          prefixIcon: const Icon(Icons.numbers),
          fillColor: const Color.fromARGB(221, 207, 207, 207),
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          border: myinputborder(),
          enabledBorder: myinputborder(),
          focusedBorder: myfocusborder(),
        ));

    //gender  field
    final genderField = TextFormField(
        autofocus: false,
        enabled: isEnbled,
        controller: genderEditingController,
        keyboardType: TextInputType.name,
        // validator: (value) {
        //   if (value!.isEmpty) {
        //     return ("Gender cannot be Empty");
        //   }
        //   return null;
        // },
        onSaved: (value) {
          genderEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          hintText: "Gender",
          prefixIcon: const Icon(Icons.boy),
          fillColor: const Color.fromARGB(221, 207, 207, 207),
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          border: myinputborder(),
          enabledBorder: myinputborder(),
          focusedBorder: myfocusborder(),
        ));

    //qualification field
    final courseField = TextFormField(
        autofocus: false,
        enabled: isEnbled,
        controller: courseEditingController,
        keyboardType: TextInputType.name,
        // validator: (value) {
        //   if (value!.isEmpty) {
        //     return ("course cannot be Empty");
        //   }
        //   return null;
        // },
        onSaved: (value) {
          courseEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          hintText: "Course",
          prefixIcon: const Icon(Icons.school),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          fillColor: const Color.fromARGB(221, 207, 207, 207),
          filled: true,
          border: myinputborder(),
          enabledBorder: myinputborder(),
          focusedBorder: myfocusborder(),
        ));

//phone number field
    final phoneNumberField = TextFormField(
        autofocus: true,
        enabled: isEnbled,
        controller: phoneNumberEditingController,
        keyboardType: TextInputType.name,
        // validator: (value) {
        //   if (value!.isEmpty) {
        //     return ("Phone Numbercannot be Empty");
        //   }
        //   return null;
        // },
        onSaved: (value) {
          phoneNumberEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          hintText: "Phone Number",
          fillColor: const Color.fromARGB(221, 207, 207, 207),
          filled: true,
          prefixIcon: const Icon(Icons.phone),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          border: myinputborder(),
          enabledBorder: myinputborder(),
          focusedBorder: myfocusborder(),
        ));

    //email field
    final emailField = TextFormField(
        autofocus: false,
        enabled: false,
        controller: emailEditingController,
        keyboardType: TextInputType.emailAddress,
        onSaved: (value) {
          fullNameEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          hintText: "email",
          fillColor: const Color.fromARGB(221, 207, 207, 207),
          filled: true,
          prefixIcon: const Icon(Icons.mail),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          border: myinputborder(),
          enabledBorder: myinputborder(),
          focusedBorder: myfocusborder(),
        ));

    //signup button
    final updateButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color.fromARGB(190, 155, 39, 176),
      child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          minWidth: 100.0,
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              try {
                await firebaseFirestore
                    .collection("students")
                    .doc(user!.uid)
                    .update({
                  'gender': genderEditingController.text,
                  'phoneNumber': phoneNumberEditingController.text,
                  'course': courseEditingController.text,
                });
                Fluttertoast.showToast(msg: "Details update successfully :) ");
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
                    errorMessage =
                        "Signing in with Email and Password is not enabled.";
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
            firebaseFirestore
                .collection("students")
                .doc(user!.uid)
                .get()
                .then((value) {
              setState(() {
                _email = value.data()!["email"];
                _name = value.data()!["firstName"] +
                    " " +
                    value.data()!["lastName"];
                _idNumber = value.data()!["idNumber"];
                _gender = value.data()!["gender"];
                _phone = value.data()!["phoneNumber"];
                _course = value.data()!["course"];
                isEnbled = false;
              });
            });
          },
          child: const Text(
            "Update",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );

    //signup button
    final editButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color.fromARGB(190, 155, 39, 176),
      child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          minWidth: 100.0,
          onPressed: () {
            setState(() {
              isEnbled = true;
            });
            Fluttertoast.showToast(msg: "Now you can edit your profile");
          },
          child: const Text(
            "Edit",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   //elevation: 0,
      //   // leading: IconButton(
      //   //   icon: Icon(Icons.arrow_back, color: Colors.purple),
      //   //   onPressed: () {
      //   //     // passing this to our root
      //   //     Navigator.of(context).pop();
      //   //   },
      //   // ),
      // ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    buildTop(),
                    //logout function
                    ActionChip(
                        label: const Text("Logout"),
                        onPressed: () {
                          logout(context);
                        }),

                    const SizedBox(height: 25),
                    emailField,
                    const SizedBox(height: 20),
                    fullNameField,
                    const SizedBox(height: 20),
                    idnumField,
                    const SizedBox(height: 20),
                    genderField,
                    const SizedBox(height: 20),
                    phoneNumberField,
                    const SizedBox(height: 20),
                    courseField,
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const SizedBox(width: 130),
                        updateButton,
                        const SizedBox(width: 10),
                        editButton,
                      ],
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return const OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(16)),
        borderSide: BorderSide(
          color: Colors.greenAccent,
          width: 3,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: Colors.purple,
          width: 1,
        ));
  }

  //function for profile img
  Widget buildTop() {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2; // 50/2
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  //for background img
  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: SizedBox(
            child: Image.asset(
          "assets/profilegb.jpeg",
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        )),
      );
//for circle format
  Widget buildProfileImage() => CircleAvatar(
        backgroundColor: Colors.grey.shade800,
        backgroundImage: const AssetImage('assets/pr.jpg'),
        radius: profileHeight / 2,
      );

// the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Welcome()));
  }
}
