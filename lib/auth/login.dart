import 'package:flutter/material.dart';
import 'package:flutter_app1/auth/signup.dart';
class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
            ),
            Center(
              child: Image(image: AssetImage('images/note.png'),
              height: 150,
              width:150,
              ),
            ),
             Container(
               padding: EdgeInsets.symmetric(horizontal: 20,vertical: 35),
               child: Column(
                 children: [
                   TextFormField(
                        decoration: InputDecoration(
                          border:OutlineInputBorder(borderRadius:BorderRadius.circular(20)),
                          hintText: "username",
                          prefixIcon: Icon(Icons.person,color: Colors.pink[400],),
                          
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                       TextFormField(
                         obscureText: true,
                        decoration: InputDecoration(
                          
                          border:OutlineInputBorder(borderRadius:BorderRadius.circular(20)),
                          hintText: "password",
                          prefixIcon: Icon(Icons.lock,color: Colors.pink[400],),
                          
                        ),
                      ),SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text("if you haven't account"),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed("signup");
                            },
                            child: Text("click here",style: TextStyle(color:Colors.pink[400] ),),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(onPressed: (){
                        Navigator.of(context).pushReplacementNamed("homepage");
                      }, child: Text("LOGIN"),
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        primary:Colors.pink[600] ,
                        padding: EdgeInsets.symmetric(horizontal: 30)
                      ),
                      ),
                    
                 ],
               ),
             ),
             
            
          ],
        ),
      )
    );
  }
}