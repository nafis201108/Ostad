import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text("Profile") ,
        backgroundColor: Colors.blueAccent.shade700,
      ),
body: Container(
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
   Icon(Icons.account_circle),
    Text(data)
      ],
    )


  ],
),
),


    );
  }
}

