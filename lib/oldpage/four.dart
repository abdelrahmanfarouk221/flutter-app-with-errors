import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
class four extends StatefulWidget {
  four({Key? key}) : super(key: key);

  @override
  State<four> createState() => _fourState();
}

class _fourState extends State<four> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      
      body:Center(
        child: ElevatedButton(onPressed: (){
         AwesomeDialog(
                      context: context,
                      dialogType: DialogType.QUESTION,
                      headerAnimationLoop: false,
                      animType: AnimType.BOTTOMSLIDE,
                      title: 'Question',
                      desc: 'Dialog description here...',
                      buttonsTextStyle: TextStyle(color: Colors.black),
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    )..show();

        }, child:Text("show alert")),
      )
       
    );
  }
}

