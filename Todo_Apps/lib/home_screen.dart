import 'package:flutter/material.dart';
import 'package:todo_apps/model.dart';
import 'package:todo_apps/updatetaskmodel.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController titlecontroller=TextEditingController();
  TextEditingController descriptioncontroller=TextEditingController();

  List<Modal> modal=List.empty(growable: true);
  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('TODO Apps'),
  centerTitle: true,
  backgroundColor: Colors.white,
  actions: [
    Icon(Icons.search,color: Colors.blue,),
  ],
),


      body: Padding(

        padding: const EdgeInsets.all(8.0),
        child: Container(

          child: Column(
            children: [
              TextField(
                controller: titlecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add Title'


                ),
              ),
              SizedBox(height: 5,),
              TextField(
             //   maxLines: 4,
                controller: descriptioncontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Add Description'


                ),
              ),
           SizedBox(height: 4,),
           Center(child: ElevatedButton(onPressed: (){

             String title= titlecontroller.text.trim();
             String description=descriptioncontroller.text.trim();
             if(title.isNotEmpty && description.isNotEmpty){
               setState(() {
                 titlecontroller.text='';
                 descriptioncontroller.text='';

                 modal.add(Modal(title:title,description:description));
               });
             }

           }, child: Text("Add",style: TextStyle(fontSize: 20),),
style: ElevatedButton.styleFrom(
  backgroundColor: Colors.red
),
           )),
              SizedBox(height: 5,),
              Expanded(
                child: ListView.builder(

                itemCount:modal.length ,
                itemBuilder:(context,index)=>getRow(index),


                ),
              )
            ],

          ),
        ),
      ),

    );
  }
  Widget getRow(int index){
    return Card(

      color: Colors.white10,
      child: ListTile(
        onLongPress: (){
        
showDialog(context: context, builder:(context) {

  return AlertDialog(

    title: Text("Alert"),
    actions: [
     Padding(
       padding: const EdgeInsets.all(12.0),
       child: Row(

           children: [
             TextButton(onPressed: (){

               titlecontroller.text=modal[index].title;
             descriptioncontroller.text=modal[index].description;
             setState(() {
               selectedIndex=index;
               Navigator.pop(context);
             });

showModalBottomSheet(context: context, builder: (context){
  return  Column(
      children: [

      TextField(
      controller: titlecontroller,
      decoration: InputDecoration(
      border: OutlineInputBorder(),
  hintText: 'Add Title'


  ),
  ),
  SizedBox(height: 5,),
  TextField(
  //  maxLines: 4,
  controller: descriptioncontroller,
  decoration: InputDecoration(
  border: OutlineInputBorder(),
  hintText: 'Add Description'


  ),
  ),
  SizedBox(height: 4,),
  Center(child: ElevatedButton(onPressed: (){
    String title= titlecontroller.text.trim();
    String description=descriptioncontroller.text.trim();
    if(title.isNotEmpty && description.isNotEmpty){
      setState(() {
        titlecontroller.text='';
        descriptioncontroller.text='';
modal[selectedIndex].title=title;
        modal[selectedIndex].description=description;
        selectedIndex=-1;

Navigator.pop(context);
      }

      );
    }
  },

  child: Text("Edit Done",style: TextStyle(fontSize: 20),),
    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
  )
  )
  ]

  );
}



);








             }, child: Text("Edit")),
             SizedBox(width: 120,),
             TextButton(onPressed: (){

               setState(() {
                 modal.removeAt(index);
                 Navigator.of(context).pop();
               });


             }, child: Text("Delete")),
           ],
       ),
     )
    ],

  );






}






);


        },
leading: CircleAvatar(backgroundColor: Colors.red,
child: Text(''),),
        title:Text(modal[index].title) ,
        subtitle: Text(modal[index].description),
        trailing: Icon(Icons.arrow_forward),

      ),
    );
  }
  void updateTodo(int index, String todoDetails, String desDetails){

    modal[index].title=todoDetails;
    setState(() {

    });

    modal[index].description=desDetails;
    setState(() {

    });

  }



}
