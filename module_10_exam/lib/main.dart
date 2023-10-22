import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListScreen(),
    );
  }
}

class MyListScreen extends StatefulWidget {
  @override
  _MyListScreenState createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];
  List<bool> selected = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selection Screen"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            tileColor: selected[index] ? Colors.blue : null,
            onTap: () {
              setState(() {
                selected[index] = !selected[index];
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int selectedCount = selected.where((item) => item).length;
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Selected Items"),
                content: Text("Number of selected items: $selectedCount"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Close"),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.arrow_right_alt_outlined),
      ),
    );
  }
}
