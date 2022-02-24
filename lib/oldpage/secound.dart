import 'package:flutter/material.dart';

// HOME PAGE //

class sec extends StatefulWidget {
  const sec({ Key? key }) : super(key: key);
  @override
  _secState createState() => _secState();
} 

class _secState extends State<sec> {
     int selectindex=0;

  GlobalKey<ScaffoldState>scaffoldkey=new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
      length: 3,
    child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectindex,
        backgroundColor: Colors.grey,
        onTap: (index){
          setState(() {
            selectindex=index;
            print(index);
          });
        },
        items:[
          BottomNavigationBarItem(label:"title 1 ", icon:Icon(Icons.access_alarm,color: Colors.white,) ),
          BottomNavigationBarItem(label:"title 1 ", icon:Icon(Icons.access_alarm,color: Colors.white) ),
          BottomNavigationBarItem(label:"title 1 ", icon:Icon(Icons.access_alarm,color: Colors.white) )



        ] ),
      appBar: AppBar(

        bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.white,
          labelPadding: EdgeInsets.symmetric(horizontal: 30),
          tabs: [
          
          Tab(child: Text("tab1"),icon:Icon(Icons.home)),
          Tab(child: Text("tab2"),icon: Icon(Icons.house),),
          Tab(child: Text("tab3"),icon: Icon(Icons.ice_skating))
        ]),
      title: Text("Home Page"),
      //leading:IconButton(onPressed: (){}, icon: Icon(Icons.accessible_forward_outlined)) ,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined)),
      ],
      backgroundColor: Colors.black,
      elevation: 10,
      shadowColor: Colors.black,
      centerTitle: true,
      
      ),
      drawer: Drawer(

        child: Column(
          children: [
            
            UserAccountsDrawerHeader(
               //margin: EdgeInsets.symmetric(horizontal: 10),
              currentAccountPicture: CircleAvatar(child:Icon(Icons.person),backgroundColor: Colors.black26,),
              accountName: Text("Abdelrahman Farouk"), accountEmail: Text("aabdomohemad456@gmail.com")
              ),
              ListTile(title: Text("HOME PAGE"),subtitle: Text("GO TO HOME PAGE"),leading:Icon(Icons.home),onTap: (){},),
               ListTile(title: Text("HOME PAGE"),subtitle: Text("GO TO HOME PAGE"),leading:Icon(Icons.home),onTap: (){},),
              ListTile(title: Text("HOME PAGE"),subtitle: Text("GO TO HOME PAGE"),leading:Icon(Icons.home),onTap: (){},),

              ListTile(title: Text("HOME PAGE"),subtitle: Text("GO TO HOME PAGE"),leading:Icon(Icons.home),onTap: (){},),

              ListTile(title: Text("HOME PAGE"),subtitle: Text("GO TO HOME PAGE"),leading:Icon(Icons.home),onTap: (){},),

          ],
        ),
      ),
      body:  TabBarView(children: [
        Container(child: Text("container1 "),height: double.infinity,width: double.infinity,color: Colors.blue,),
        Container(child: Text("container1 "),height: double.infinity,color: Colors.grey,width: double.infinity),
        Container(child: Text("container1 "),height: double.infinity,color: Colors.red,width: double.infinity)

      ])
    )
    ); 
    
  }
}