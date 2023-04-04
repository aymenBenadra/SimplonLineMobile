

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplonmobile/utils/global.colors.dart';
import 'package:simplonmobile/utils/global.size.dart';
import 'package:simplonmobile/view/apprenant/brief.view.dart';
import 'package:simplonmobile/view/apprenant/formateur.view.dart';
import 'package:simplonmobile/view/splash.view.dart';

import 'apprenant.view.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // This widget is the root of your application.q
  @override
  Widget build(BuildContext context) {
    GlobalSize().init(context);
    return Scaffold(
      appBar: new AppBar(
        title: Text('Dashboard'),
        backgroundColor: GlobalColors.mainColor,
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text('koala',style: new TextStyle(fontWeight:FontWeight.bold,fontSize:17.0 ),),
              accountEmail: new Text('koala@admin.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage:(NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.icone-png.com%2Fpng%2F53%2F52681.png&f=1&nofb=1&ipt=8d7b4bfcad86b6fc7548275db78c4cdf3348aa80dc01fafc5459809c3d49f363&ipo=images")
                ),
               ),
               decoration: new BoxDecoration(
                color: GlobalColors.mainColor
               ),
              ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Apprenant'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApprenantView()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text('Formateur'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormateurView()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Briefs'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BriefView()),
                );
              },
            ),
           
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MyMenu(title: "Formateur",icon: Icons.person,warna:Colors.red,
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormateurView()),
                );
              },),
            MyMenu(
              title: "Briefs",
              icon: Icons.subject,
              warna: Colors.red,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BriefView()),
                );
              },
          ),

            MyMenu(title: "Apprenant",icon: Icons.person_2,warna:Colors.red,
    
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApprenantView()),
                );
              },
              ),
          ],
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor warna;
  final VoidCallback onTap;

  const MyMenu({Key? key, required this.title, required this.icon, required this.warna, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        splashColor: GlobalColors.mainColor,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: warna,
              ),
              Text(title, style: new TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}
