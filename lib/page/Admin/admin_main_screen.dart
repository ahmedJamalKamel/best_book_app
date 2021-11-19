import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminMainScreen extends StatefulWidget {
  const AdminMainScreen({Key? key}) : super(key: key);

  @override
  _AdminMainScreenState createState() => _AdminMainScreenState();
}

class _AdminMainScreenState extends State<AdminMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          ElevatedButton(child: Text("Author"),onPressed: (){
            Navigator.of(context).pushNamed("/create_author");

          },),
          ElevatedButton(child: Text("Topic"),onPressed: (){
            Navigator.of(context).pushNamed("/create_topic");
          },),
          ElevatedButton(child: Text(""),onPressed: (){
            Navigator.of(context).pushNamed("/create_book_all");
          },),
        ],
      ),
    );
  }
}
