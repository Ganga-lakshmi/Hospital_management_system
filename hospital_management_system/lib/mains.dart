
import 'package:flutter/material.dart';
import 'view/multiselectdropdown_screen.dart';


class MyApps extends StatelessWidget {
  final docId;
  MyApps(this.docId);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: MultiSelectDropDownScreen(docId),
          );
  }
}