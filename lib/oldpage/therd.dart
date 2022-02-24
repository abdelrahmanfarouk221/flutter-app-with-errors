import 'package:flutter/material.dart';

class therd extends StatefulWidget {
  const therd({ Key? key }) : super(key: key);

  @override
  _therdState createState() => _therdState();
}

class _therdState extends State<therd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: Drawer(),
      appBar: AppBar(),
      body: 
      SingleChildScrollView(
        child:Center(
        child: Column(

          children: [

            Text("login page",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            Icon(Icons.person,size: 150,),
            Container(
              padding: EdgeInsets.all(30),
              
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("username",textAlign:TextAlign.start,),
                  TextFormField(
                  decoration:InputDecoration(
                    labelText: "abdomohemad@gmail.com",
                    prefixIcon: Icon(Icons.person),
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:BorderSide(width: 40) ),
                  ),
                ),
                SizedBox(height: 30,),
                 Text("password"),
                  TextFormField(
                  decoration:InputDecoration(
                   labelText: "****************",
                   prefixIcon: Icon(Icons.lock),
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:BorderSide(width: 40) )
                  ),
                ),
                TextButton(onPressed: (){}, child: Text("forget password")),
                Center(child:
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30)
                  ),
                  onPressed: (){
                    Navigator.of(context).pop();
                  }, child: Text("login"))
                ,),
               
                Text("or can login with..."),
                SizedBox(height: 30,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   
                    children: [
                  CircleAvatar(child: Icon(Icons.facebook),),
                   CircleAvatar(child: Icon(Icons.group),),
                    CircleAvatar(child: Icon(Icons.youtube_searched_for_sharp),),

                ],),
                 SizedBox(height: 30,),
                 Center(
                   child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30)
                  ),
                  onPressed: (){}, child:
                  
                 Text("signup",textAlign: TextAlign.center,)
                 
                 
                 ) ,
                 )
                
                ],
              ),
            )
          ],
        ),
      ) ,
      )
      
    );
  }
}