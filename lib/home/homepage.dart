import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List notes = [
    {
      "note":"hi iam abdelraman mohamed farouk this is the first todo app ",
      "image":"images/3.jpj",
    },
    {
      "note":"hi iam abdelraman mohamed farouk this is the secound todo app ",
      "image":"images/3.jpj",
    },
     {
      "note":"hi iam abdelraman mohamed farouk this is the third todo app ",
      "image":"images/3.jpj",
    },
     {
      "note":"hi iam abdelraman mohamed farouk this is the 4TH todo app ",
      "image":"images/3.jpj",
    },
    {
      "note":"hi iam abdelraman mohamed farouk this is the 5TH todo app ",
      "image":"images/3.jpj",
    },
  ];


  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
      
        centerTitle: true,
        backgroundColor:Colors.pink[400],
        title: Text("HOME PAGE"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).pushNamed("addnote");
      },child: Icon(Icons.add,),backgroundColor: Colors.pink[600],),
      body:Container(
        

        child: ListView.builder( 
          //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemCount:notes.length,
          itemBuilder: (context,i){
          
          return listnotes(notes: notes[i],wid:wid);
          }),
          
      ),
    );
  }
}

class listnotes extends StatelessWidget{
  final notes;
  final wid;
  listnotes({this.notes,this.wid});
  @override
  Widget build(BuildContext context) {
   return Card(
    // color: Colors.yellowAccent,
     child: Row(
       children: [
         Expanded(child: Image(image: AssetImage('images/3.jpg'),),
         flex: 1,
         ),
         Expanded(
           flex: 2,
           child: ListTile(
             title: Text("Title"),
             subtitle: Text("${notes['note']}"),
            // trailing: IconButton(onPressed: (){}, icon:Icon(Icons.edit))
            
           ),
         ),
         Column(
           children: [
             IconButton(onPressed: (){}, icon:Icon(Icons.edit,color:Colors.pink[900],)),
             IconButton(onPressed: (){}, icon:Icon(Icons.delete,color: Colors.red,))
           ],
         )
       ],
     ),
   );
  }
  
}