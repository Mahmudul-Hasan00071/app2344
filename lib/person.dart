import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Person extends StatelessWidget {
  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Hi! Hasan"),
          content: Text("Please choose first"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop("Thanks for Click");
              },
              child: Text("Ok"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop("Sorry, You haven't clicked");
              },
              child: Text("No"),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            showAlertDialog(context);
          },
          child: Text("Click This Button"),
        ),
      ),
    );
  }
}