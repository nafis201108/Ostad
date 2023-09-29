import 'dart:ui';

import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);
//MediaQuery
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.sizeOf(context);
    print(size);
   // Orientation orientation=MediaQuery.orientationOf(context);
    //print(orientation);
List<DisplayFeature> displayFeatures=MediaQuery.displayFeaturesOf(context);
print(displayFeatures);
print(MediaQuery.devicePixelRatioOf(context));
    return Scaffold(
      appBar: AppBar(
        title: Text("News Feed"),

      ),
      body: Center(
        child: OrientationBuilder(
            builder:(context,orientation) {


            return GridView.count(
              crossAxisCount:  orientation == Orientation.portrait ? 2 : 2,
              children: List.generate(10, (index){
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
            );
    }
      ),
      )
    );
  }
}
