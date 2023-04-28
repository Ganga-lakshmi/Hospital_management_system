// import 'package:flutter/material.dart';

// class StudentRecordButton extends StatelessWidget {
//   const StudentRecordButton({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) => Scaffold(
//       appBar: AppBar(
//         title: const Text('History records'),
//         centerTitle: true,
//         titleSpacing: 00.0,
//         //centerTitle: true,
//         toolbarHeight: 100.2,
//         toolbarOpacity: 0.8,
//         shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//           bottomRight: Radius.circular(25),
//           bottomLeft: Radius.circular(25),
//         )),
//         elevation: 0.00,
//         // backgroundColor: Color.fromARGB(255, 163, 131, 168),
//         backgroundColor: Color.fromARGB(255, 149, 46, 158),
//       ),
//       body: Center(
//           child: SingleChildScrollView(
//               child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           //first

//           Padding(
//               padding: const EdgeInsets.only(left: 40.0, right: 40),
//               child: Card(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     AppBar(
//                       leading: Icon(Icons.people),
//                       title: Text('22-09-2022'),
//                     )
//                   ],
//                 ),
//               )),
//           //borderRadius: BorderRadius.circular(5)
//           Padding(
//             padding: const EdgeInsets.only(left: 40.0, right: 40),
//             child: Container(
//               height: 45,
//               decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 216, 203, 203),
//                   borderRadius: BorderRadius.circular(5)),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10.0, right: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       " Problem: ",
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.purple,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 32,
//                     ),
//                     Text(
//                       " stomach pain ",
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Color.fromARGB(255, 11, 3, 32),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 32,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 0,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 40.0, right: 40),
//             child: Container(
//               height: 45,
//               decoration: BoxDecoration(
//                   //color: Colors.grey, borderRadius: BorderRadius.circular(5)),
//                   color: Color.fromARGB(255, 216, 203, 203),
//                   borderRadius: BorderRadius.circular(0)),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10.0, right: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       " Medicine 1: ",
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.purple,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Text(
//                       " Paracetmol",
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Color.fromARGB(255, 11, 3, 32),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 32,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 0,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 40.0, right: 40),
//             child: Container(
//               height: 45,
//               decoration: BoxDecoration(
//                   //color: Colors.grey, borderRadius: BorderRadius.circular(5)),
//                   color: Color.fromARGB(255, 216, 203, 203),
//                   borderRadius: BorderRadius.circular(0)),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10.0, right: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       " Medicine 2: ",
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.purple,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Text(
//                       " Antacid ",
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Color.fromARGB(255, 11, 3, 32),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 32,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           //second
//           Padding(
//               padding: const EdgeInsets.only(left: 40.0, right: 40),
//               child: Card(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     AppBar(
//                       leading: Icon(Icons.people),
//                       title: Text('21-09-2022'),
//                     )
//                   ],
//                 ),
//               )),
//           //borderRadius: BorderRadius.circular(5)
//           Padding(
//             padding: const EdgeInsets.only(left: 40.0, right: 40),
//             child: Container(
//               height: 45,
//               decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 216, 203, 203),
//                   borderRadius: BorderRadius.circular(5)),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10.0, right: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       " Problem: ",
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.purple,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 32,
//                     ),
//                     Text(
//                       " headache ",
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Color.fromARGB(255, 11, 3, 32),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 32,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 0,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 40.0, right: 40),
//             child: Container(
//               height: 45,
//               decoration: BoxDecoration(
//                   //color: Colors.grey, borderRadius: BorderRadius.circular(5)),
//                   color: Color.fromARGB(255, 216, 203, 203),
//                   borderRadius: BorderRadius.circular(0)),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10.0, right: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       " Medicine 1: ",
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.purple,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Text(
//                       " paracetmol",
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Color.fromARGB(255, 11, 3, 32),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 32,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 0,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 40.0, right: 40),
//             child: Container(
//               height: 45,
//               decoration: BoxDecoration(
//                   //color: Colors.grey, borderRadius: BorderRadius.circular(5)),
//                   color: Color.fromARGB(255, 216, 203, 203),
//                   borderRadius: BorderRadius.circular(0)),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10.0, right: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       " Medicine 2: ",
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.purple,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Text(
//                       " Aspirin ",
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Color.fromARGB(255, 11, 3, 32),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 32,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ))));
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class StudentRecordButton extends StatefulWidget {
  const StudentRecordButton({Key? key}) : super(key: key);

  @override
  State<StudentRecordButton> createState() => _StudentRecordButtonState();
}

class _StudentRecordButtonState extends State<StudentRecordButton> {
  User? student = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('History records'),
          centerTitle: true,
          titleSpacing: 00.0,
          //centerTitle: true,
          toolbarHeight: 100.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          )),
          elevation: 0.00,
          // backgroundColor: Color.fromARGB(255, 163, 131, 168),
          backgroundColor: Color.fromARGB(255, 149, 46, 158),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            recordsList(),
          ],
        )));
  }

  recordsList() {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('records')
            .where("rid", isEqualTo: student!.uid)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.docs.length != 0) {
              return Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListView.separated(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    var reserveIndex = snapshot.data!.docs.length - index - 1;
                    var ds = snapshot.data!.docs[reserveIndex];

                    var medicines = ds["medicine"].join(", ");
                    return ListTile(
                      title: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 30.0, right: 30),
                                child: Card(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      AppBar(
                                        leading: Icon(Icons.people),
                                        title: Text('22-09-2022'),
                                      )
                                    ],
                                  ),
                                )),
                            //borderRadius: BorderRadius.circular(5)
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30.0, right: 30),
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 216, 203, 203),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        " Problem: ",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.purple,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        // " stomach pain ",
                                        ds["problem"],
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color.fromARGB(255, 11, 3, 32),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 32,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30.0, right: 30),
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                    //color: Colors.grey, borderRadius: BorderRadius.circular(5)),
                                    color: Color.fromARGB(255, 216, 203, 203),
                                    borderRadius: BorderRadius.circular(0)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        " Medicines: ",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.purple,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30.0, right: 30),
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                    //color: Colors.grey, borderRadius: BorderRadius.circular(5)),
                                    color: Color.fromARGB(255, 216, 203, 203),
                                    borderRadius: BorderRadius.circular(0)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          // " Medicine 2: ",
                                          medicines,
                                          style: TextStyle(
                                            fontSize: 20,
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
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(),
                ),
              ));
            } else {
              return const Center(
                child: Text("No Records",
                    style: TextStyle(
                      fontSize: 20,
                    )),
              );
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.purple,
              ),
            );
          }
        });
  }
}
