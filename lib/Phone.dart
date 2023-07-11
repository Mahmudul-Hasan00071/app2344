import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Phone extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Phone1()));
        }, child: Text("Home Page1")),
        ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Phone2()));
          }, child: Text("Home Page2")),
      ],

    );
  }
  }

class Phone1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     title: Text("All Number"),
        titleSpacing: 10,
        toolbarHeight:71,
      ),
      body: Center(
        child: LinearProgressIndicator()
        )
    );

 }
}
class Phone2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Phone Page2"),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0hvkeew9GUw--yxX-s1iLlKlrJlMSOciFog&usqp=CAU"),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0hvkeew9GUw--yxX-s1iLlKlrJlMSOciFog&usqp=CAU"),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0hvkeew9GUw--yxX-s1iLlKlrJlMSOciFog&usqp=CAU"),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQZ9tdwZ1D0rmMcDjRdudmQx2R2CNXQdaXzQ&usqp=CAU"),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFC7DHWsZow3tS1oiSCxqhg_mHSXtbUr_qkw&usqp=CAU"),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSustucPZEvDIDrgagVbiByj3f06IGl3kCBpw&usqp=CAU"),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTASmaWmVXxdDXBeGAJg9EogbwGYvaolQnOZg&usqp=CAU"),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTASmaWmVXxdDXBeGAJg9EogbwGYvaolQnOZg&usqp=CAU"),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjizOteE8uEsCwYztGEAJ7Rbdj_LufSwhiRpTEDy3b1Fxewt4fDs_qU7fuRDNQRBXgTaU&usqp=CAU"),


          ],
        ),
      ),
    );
  }
  }
