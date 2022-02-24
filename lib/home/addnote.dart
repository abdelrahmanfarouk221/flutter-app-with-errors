import 'package:flutter/material.dart';

class addnote extends StatefulWidget {
  addnote({Key? key}) : super(key: key);

  @override
  State<addnote> createState() => _addnoteState();
}

class _addnoteState extends State<addnote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Add Note",
      //style:TextStyle(fontSize: 20),
      ),
      //centerTitle: true,
      backgroundColor: Colors.pink[400],
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.pink[600],
      onPressed: (){},
    child: Icon(Icons.add),
    
    ),
    body: Form(child: Container(
      margin: EdgeInsets.all(10),
      child: Column(
            
        children: [
          SizedBox(height: 20),
          TextFormField(
            maxLength: 24,
            decoration: InputDecoration(
              label: Text("Title"),
              prefix: Icon(Icons.note),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
            ),
          ),
          SizedBox(height: 20),
         TextFormField(
            minLines: 1,
            maxLines: 4,
            maxLength: 250,
            decoration: InputDecoration(
              label: Text("Note"),
              prefix: Icon(Icons.circle_notifications),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: (){}, child: Text("Add image"))
        
        ],
      ),
    )),
    );
  }
}