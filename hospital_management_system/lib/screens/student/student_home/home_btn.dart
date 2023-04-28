import 'package:flutter/material.dart';

class StudentHomeButton extends StatelessWidget {
  const StudentHomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const StudentHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StudentHomePage extends StatefulWidget {
  const StudentHomePage({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<StudentHomePage> {
  String istapped = '';
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('student Home'),
          centerTitle: true,
        ),
        body: Center(
          child: Stack(children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 20, top: 70),
              alignment: Alignment.center,
              child: Image.asset(
                "assets/home2.png",
                fit: BoxFit.cover,
                height: 500,
                width: double.infinity,
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 10, top: 120),
                alignment: Alignment.topLeft,
                child: const Text(
                  'Welcome to the HMS! ',
                  style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                )),
            Container(
              padding: const EdgeInsets.only(right: 150, bottom: 240),
              alignment: Alignment.center,
              child: const Text(
                'Save your journey with',
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 180, bottom: 170),
              alignment: Alignment.center,
              child: const Text(
                ' hospital care',
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
            ),
            // Container(
            //   padding: const EdgeInsets.only(right: 180, bottom: 70),
            //   child: Center(
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         //Text(msg, style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),),
            //         MaterialButton(
            //           onPressed: () {},
            //           color: Colors.grey[300],
            //           textColor: Colors.black,
            //           padding: const EdgeInsets.all(13.0),
            //           splashColor: Colors.purpleAccent,
            //           shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(20)),
            //           child: const Text(
            //             "Explore ",
            //             style: TextStyle(fontSize: 20),
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
          ]),
        ),
      );
}
