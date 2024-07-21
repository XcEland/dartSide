import 'package:delivery/drawer/page1.dart';
import 'package:delivery/drawer/page2.dart';
import 'package:delivery/drawer/page3.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      drawer: Drawer(
        // width: 150,
        backgroundColor: Color.fromARGB(237, 250, 248, 248),
        // child: ListTile(
        // title: Text('Close Drawer'),
        // onTap: (){
        //   Navigator.of(context).pop();
        // },
        child: ListView(
          children: [
            DrawerHeader(
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(2, 147, 249, 1),
                radius: 55,
                backgroundImage:AssetImage('../assets/images/passport.jpg'),
                )),
            ListTile(
              leading: Icon(Icons.home, size: 80,),
              title: Text('List Tile 1'),
              subtitle: Text('ok, lets see, lets add more text to this text widget'),
              isThreeLine: true,
              dense: true,
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: (){},),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page1()));
              },
              ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page2()));
              },
              ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap:(){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Page3()));
              }

              ),
          ],
        ),

        ),
      body: Center(
        child: Builder(
          builder: (context) {
            return ElevatedButton( 
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
              child: Text('Open Drawer'),
            );
          }
        ),
      ),
      );
  }
}