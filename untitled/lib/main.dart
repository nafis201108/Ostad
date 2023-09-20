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
    );
  }
}
class HomeScreen extends StatelessWidget {



  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Photo Gallery"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("Welcome To My Photo Gallery!",
                style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for Photos...",
                  border: OutlineInputBorder(),

                ),

              ),
            ),
            SizedBox(height: 5,),
            Expanded(
              child: GridView.builder(
                  itemCount: storeItems.length,


                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0
                  ),
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){



                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Photo $index Clicked!'),
                          ),
                        );




                      },
                      child: Card(
                        elevation: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: Image.network(storeItems[index].itemImage))
                            , Text("Photo$index"),



                          ],
                        ),
                      ),





                    ) ;


                  }


              ),
            ),
            SizedBox(height: 5,),
            Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage('https://cdn.orvis.com/images/DBS_Beagle_1280.jpg')),
                      title: Text("Photo 1"),
                      subtitle: Text("Description for Photo 1"),
                    ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWKvQL7LzQUcw2P6CDn2YGhWxzbzjxULLdHu-JQtWSAa3LdZkSwvRrXRNcZdgRhc_bRmI&usqp=CAU')),
                      title: Text("Photo 2"),
                      subtitle: Text("Description for Photo 2"),
                    ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/the-shiba-inu-species-is-looking-at-its-owner-in-royalty-free-image-1656368953.jpg?crop=1xw:0.84335xh;center,top&resize=1200:*')),
                      title: Text("Photo 3"),
                      subtitle: Text("Description for Photo 3"),
                    ),



                  ],


                )
            ),
            SizedBox(height: 4,),
            Center(
              child: ElevatedButton(
                onPressed: (){


                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Photo Uploaded Successfully!'),
                    ),
                  );



                },
                child: Icon(Icons.upload,),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20)
                ),

              ),
            )



          ],
        ),

      ),
    );
  }
}

class Store{
  String itemImage;
  Store.items({
    required this.itemImage
  });
}
List<Store> storeItems=[
  Store.items(itemImage: "https://worldanimalfoundation.org/wp-content/uploads/2022/12/Boxer-Dog-review.jpg"),
  Store.items(itemImage: "https://cdn.orvis.com/images/DBS_Beagle_1280.jpg"),
  Store.items(itemImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWKvQL7LzQUcw2P6CDn2YGhWxzbzjxULLdHu-JQtWSAa3LdZkSwvRrXRNcZdgRhc_bRmI&usqp=CAU"),
  Store.items(itemImage: "https://hips.hearstapps.com/hmg-prod/images/the-shiba-inu-species-is-looking-at-its-owner-in-royalty-free-image-1656368953.jpg?crop=1xw:0.84335xh;center,top&resize=1200:*"),
  Store.items(itemImage: "https://www.k9ofmine.com/wp-content/uploads/2021/11/ancient-dog-breeds-850x520.jpg"),
  Store.items(itemImage: "https://www.hartz.com/wp-content/uploads/2023/01/genetic-testing-for-dog-breeds-3.jpg"),


];


