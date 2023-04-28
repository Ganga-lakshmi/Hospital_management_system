import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hospital_management_system/mains.dart';

class DoctorConsultant extends StatefulWidget {
  final docId;
  const DoctorConsultant(this.docId);

  @override
  _DoctorConsultState createState() => _DoctorConsultState(docId);
}

class _DoctorConsultState extends State<DoctorConsultant> {
  final docId;
  _DoctorConsultState(this.docId);
  User? user = FirebaseAuth.instance.currentUser;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  var _name = "";
  var _id = "";
  var _problem = "";
  var _temp = "";
  var _spo2 = "";
  var _bp = "";

//getting user appointment data
  @override
  void initState() {
    super.initState();
    firebaseFirestore.collection("appointments").doc(docId).get().then((value) {
      setState(() {
        _name = value.data()!["fullName"];
        _id   = value.data()!["idNumber"];
        _problem = value.data()!["problem"];
        _problem = value.data()!["problem"];
        _temp = value.data()!["temp"];
        _spo2 = value.data()!["spo2"];
        _bp = value.data()!["bp"];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Student Details'),
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 100.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          )),
          elevation: 0.00,
          backgroundColor: Color.fromARGB(190, 155, 39, 176),
        ),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                backgroundImage: AssetImage('assets/p.png'),
                radius: 60,
                ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(70, 155, 39, 176),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            " Name: ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Flexible(
                            child: Text(
                              _name,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(70, 155, 39, 176),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            " ID Number: ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Flexible(
                            child: Text(
                              _id,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(70, 155, 39, 176),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            " Problem: ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Flexible(
                            child: Text(
                              _problem,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 40),
                    child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(70, 155, 39, 176),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Temperature:   ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    _temp,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ]),
                        ))),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(70, 155, 39, 176),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            " SPo2: ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 69,
                          ),
                          Flexible(
                            child: Text(
                              _spo2,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(70, 155, 39, 176),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            " B.P : ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 76,
                          ),
                          Flexible(
                            child: Text(
                              _bp,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //buildrad(context),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40),
                  child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(190, 155, 39, 176),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: MaterialButton(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            minWidth: MediaQuery.of(context).size.width,
                            onPressed: () {
                              //const MyApps();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApps(docId)),
                              );
                            },
                            child: const Text(
                              "Add prescript",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      )),
                ),
              ]),
        )));
  }
}
