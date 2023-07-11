import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Informaction"),
        toolbarHeight: 60,
        titleSpacing: 16,
        shadowColor: Colors.black,
      ),
body:    SingleChildScrollView(
    scrollDirection: Axis.vertical,

  child: Column(

    children: [
      CircularProgressIndicator(
        color: Colors.amber,
      ),
      Text("My Name Is Hasan"),
      Text("I'm an Flutter Devloper"),
      Image.network("https://scontent.fdac145-1.fna.fbcdn.net/v/t39.30808-6/279631452_337791841779292_8457824411789381004_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=174925&_nc_ohc=A2nNSTfFJo4AX_E1nuR&_nc_ht=scontent.fdac145-1.fna&oh=00_AfBCJQNOmwsp5N27MvoarPViocQlNZMdLRKKipkN7oNWVg&oe=64AADBC6"),
      Image.network("https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/323318417_738026184585049_4874826092349802220_n.jpg?stp=dst-jpg_p180x540&_nc_cat=110&ccb=1-7&_nc_sid=19026a&_nc_ohc=13yyzgyAiwQAX_T_hF9&_nc_ht=scontent.fdac41-1.fna&oh=00_AfAGH9x1IcfYuLteVzrfV_aeZ3y5KerRFPD4c4goLnSg0Q&oe=64AAFF42"),
      Image.network("https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/354630358_604068391818301_3940680342719873647_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=e3f864&_nc_ohc=1vlmwxJGBNsAX_DWjrV&_nc_ht=scontent.fdac41-1.fna&oh=00_AfAXDKiLCIsaB6NnfctIm3cBootI9j1NW-t-h-IT098WNA&oe=64AAFE2C"),
    ],


  ),
    ),
    );

  }
}