

import 'package:flutter/material.dart';

class first extends StatefulWidget {
  first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  bool male = false ;
  bool femal = false ;
  bool accept=false;
  var selectcountry ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor: Colors.deepOrangeAccent,
      child: Icon(Icons.chat_bubble_outline),
      ),
      
      
      body:Container(
        color: Colors.blue[100],
        height: double.infinity,
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal:10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("LOGIN PAGE",style: TextStyle(fontSize: 40,),),
              Row(
                children: [
                  //////////////////////////////////////////////
                  Text("username"),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                    padding: EdgeInsets.all(5),
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(border:Border.all(color: Colors.black)),
                    child: Text("USER NAME HERE"),
                  )
                  //////////////////////////////////////////////
                ],
              ),
                 Row(
                children: [
                  //////////////////////////////////////////////
                  Text("email"),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 50,vertical: 30),
                    padding: EdgeInsets.all(5),
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(border:Border.all(color: Colors.black)),
                    child: Text("write your email"),
                  )
            ],
          ),
            Row(
                children: [
                  //////////////////////////////////////////////
                  Text("password"),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                    padding: EdgeInsets.all(5),
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(border:Border.all(color: Colors.black)),
                    child: Text("atlest 10 chr"),
                  )
            ],
          ),
            Row(
                children: [
                  //////////////////////////////////////////////
                  Text("password chick"),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
                    padding: EdgeInsets.all(5),
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(border:Border.all(color: Colors.black)),
                    child: Text("atlest 10 chr"),
                  )
            ],
          ),
          Container(
            
            child: 
          
          Text("gender",style: TextStyle(),)),

          Row(
           children: [
             Text("male"),
             Checkbox(
               value: male,
                onChanged: (val){
                  setState(() {
                     male=val!;
               print("male");
                  });
                }),
               Text("femal"),
             Checkbox(
               value: femal,
                onChanged: (val){
                  setState(() {
                     femal=val!;
               print("femal");
                  });
                }) ,
           ],
          ),
           Container(
             alignment: AlignmentDirectional.centerStart,
             child: Row(
               children: [
                 Text("select your country   "),
                 
                DropdownButton(
                  hint: Text("choose"),
                  items: ["USA","UAE","EG","SY"]
                  .map((e) => DropdownMenuItem(
                    child: Text("$e"),
                    value: e,
                    ))
                  .toList(),
                  onChanged:(val){
                    setState(() {
                      selectcountry=val;
                    });

                  },
                   value:selectcountry,

                   ),
               ],
             ),
           ) ,   
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("accept all licence"),
                 Switch(
                   activeColor: Colors.black,
                   
                   value: accept, onChanged: (val){
                   setState(() {
                     accept=val;
                    print(accept);
                   });
                    
                 })
               ],
             )       
            ],
          ),
        ),
      ) ,
    );
  }
}