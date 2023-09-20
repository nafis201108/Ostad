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
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,

    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title:Text("My Shopping List"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))

        ],

      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(

            children: [
              ListTile(
                leading: Icon(Icons.shopping_basket_sharp),
                title: Text("Apples"),

              ),
              ListTile(
                leading: Icon(Icons.shopping_basket_sharp),
                title: Text("Bananas"),

              ),
              ListTile(
                leading: Icon(Icons.shopping_basket_sharp),
                title: Text("Bread"),

              ),
              ListTile(
                leading: Icon(Icons.shopping_basket_sharp),
                title: Text("Milk"),

              ),
              ListTile(
                leading: Icon(Icons.shopping_basket_sharp),
                title: Text("Eggs"),

              ),




            ],
          ),
        ),

      ),

    );
  }
}


