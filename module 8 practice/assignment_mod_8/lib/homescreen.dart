import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
body: OrientationBuilder(
        builder:(context,orientation) {
return Expanded(
  child:   Container(
  
    child: Column(
  
  
  
      children: [
  
        SizedBox(height: 10,),
  
        Center(
  
          child: CircleAvatar(
  
            backgroundImage: NetworkImage('https://media.istockphoto.com/id/509052128/photo/golden-retriever-sitting-in-front-of-a-white-background.jpg?s=612x612&w=0&k=20&c=ElpbUJyqy2vPdkzfrCin4thzBvEveakY6J1wNyz0Gkk='),
  
            radius: 120,
  
          ),
  
  
  
        ),
  
        SizedBox(height: 7,),
  
        Center(
  
          child: Text("Johh Doe",
  
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),
  
  
  
          ),
  
        ),
  
        SizedBox(height: 5,),
  
        Wrap(
  
         children: [
  
           Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet turpis eu enim tristique, in iaculis libero porttitor.')
  
         ],
  
  
  
  
  
  
  
        ),
  
    Expanded(
      child: GridView.count(
  
          crossAxisCount:  orientation == Orientation.portrait ? 2 : 2,
  
          children: List.generate(6, (index){
  
            return Center(
  
  
  
                child: Column(
  
                  children: <Widget>[
  
                    Image.network(
  
                      'https://picsum.photos/500/500?random=$index',
  
                      width: 100,
  
                      height: 100,
  
                    ),
  
                    Text('Text $index',style: Theme.of(context).textTheme.bodySmall,)
  
  
  
  
  
  
  
                  ],
  
  
  
                )
  
  
  
            );
  
          }
  
  
  
          )
  
      ),
    )
  
      ],
  
    ),
  
  ),
);

    }
    ),
    );
  }
}
