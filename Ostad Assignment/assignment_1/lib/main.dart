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

      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
toolbarHeight: 100,
       centerTitle: true,
       title: Text("Home"),
        elevation: 70,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo))

        ],

leading: Icon(Icons.search),
      ),

body: Container(
  child:   Center(


    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

         Text("This is mod 5 Assignment",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("MY",style: TextStyle(fontSize: 24,color: Colors.red.shade600),),
           SizedBox(width: 4,),
           Text("phone",style: TextStyle(color: Colors.blueAccent),),
           SizedBox(width: 4,),
           Text("name",style: TextStyle(color: Colors.purple),),
           SizedBox(width: 4,),
           Text("Your Phone name",style: TextStyle(fontSize: 24,color: Colors.orange.shade300),),
         ],
       )
      ],

    ),


    ),
),





    );
  }
}

