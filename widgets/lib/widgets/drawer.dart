import 'package:flutter/material.dart';
import 'package:widgets/pages/settings.dart';

class DrawerWidget  extends StatelessWidget {
  const DrawerWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.amber,
        title: Text('Drawer'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 50,
              color: Colors.orange[400],
              child: DrawerHeader(
                curve: Curves.linear,
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                ),
                  child: Center(
                    child: Text('L O G O', 
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
            ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: (){

                },
              ),
              ListTile(
                leading: Icon(Icons.verified_user),
                title: Text('User details'),
                onTap: (){

                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SettingsWidget()));
                },
              ),
              Positioned(
                bottom: 0,

                child: ListTile(
                  leading: Icon(Icons.close,
                  color: Colors.red[600],),
                  title: Text('Exit'),
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                ),
              )
          ],
        ),
      ),
    );
  }
}