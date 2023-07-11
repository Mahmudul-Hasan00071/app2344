
import 'package:app22/person.dart';
import 'package:app22/settings.dart';
import 'package:flutter/material.dart';
import 'Phone.dart';
import 'Search.dart';
main(){
  runApp(const MyApp());//Application
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home:HomeActivity());
  }
}
class HomeActivity extends StatelessWidget {
  get child => null;
  MySnackbar(Message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(Message))
    );
  }
  ///camel case
  Myalertdialog(context) {
    return showDialog(context: context, builder:(BuildContext context) {
      return Expanded(child: AlertDialog(
        title: Text(" cow Alert!"),
        content: Text("Do you buy a Cow"),
        actions: [
          TextButton(onPressed: (){MySnackbar("Success! You have been Buyed a cow",context);Navigator.of(context).pop();}, child:Text("Yes")),
          TextButton(onPressed: (){ MySnackbar("Sorry! you  have not buy a cow",context);
          Navigator.of(context).pop();}, child:Text("No"))
        ],
      )
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 6, child: Scaffold(
      appBar: AppBar(
        title: Text("App"),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.phone),text: 'Phone',),
            Tab(icon: Icon(Icons.search),text: 'Search',),
            Tab(icon: Icon(Icons.person),text: 'Person',),
            Tab(icon: Icon(Icons.supervised_user_circle),text: 'User',),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children:   [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.tealAccent),
              accountName: Text("Mahmudul", style: TextStyle(color: Colors.black), ) ,
              accountEmail: Text("Info@mahmudul.com",style: TextStyle(color: Colors.black)),
              currentAccountPicture: Image.network("https://yt3.ggpht.com/yti/AHyvSCCPj-7RfAGo1NtnHkdtmysGPj6b_OZs7f-NLFpi=s88-c-k-c0x00ffffff-no-rj-mo"),
            ),
            ListTile(leading: Icon(Icons.email), title: Text("email"),onTap: (){MySnackbar("Email", context);},),
            ListTile(leading:Icon(Icons.settings), title: Text("settings"),onTap: (){MySnackbar("Settings", context);},),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children:   [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.tealAccent),
              accountName: Text("Hasan", style: TextStyle(color: Colors.black), ) ,
              accountEmail: Text("Info@hasan.com",style: TextStyle(color: Colors.black)),
              currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLxSkwhfRx5n1mZP1EgH04eqfpBgFqjy4B-w&usqp=CAU"),
            ),
            ListTile(leading: Icon(Icons.person), title: Text("person"),onTap: (){MySnackbar("Person", context);},),
            ListTile(leading: Icon(Icons.phone), title: Text("Phone"), onTap: (){ MySnackbar("Phone", context);},),
          ],
        ),
      ),
      body: TabBarView(
          children: [
            Phone(),
            Search(),
            Person(),
            settings()
          ]
      ),
    )
    );
  }
}