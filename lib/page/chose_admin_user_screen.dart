import 'package:flutter/material.dart';
class ChoseAdminOrUser extends StatefulWidget {
  const ChoseAdminOrUser({Key? key}) : super(key: key);

  @override
  _ChoseAdminOrUserState createState() => _ChoseAdminOrUserState();
}

class _ChoseAdminOrUserState extends State<ChoseAdminOrUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Container(),
          ElevatedButton(onPressed: () {
            Navigator.of(context).pushNamed("/admin_main_screen");
          }, child: const Text("Admin")),
          ElevatedButton(onPressed: () {
            Navigator.of(context).pushNamed("/select_topics_screen");
          }, child: const Text("User")),
        ],),
    ),);
  }
}
