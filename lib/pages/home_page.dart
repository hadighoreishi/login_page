import 'package:flutter/material.dart';
import '../componets/post_item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Home Page"),
        //   centerTitle: true,
        //   actions: [
        //     Icon(Icons.location_on_outlined),
        //   ],
        // ),
        body: ListView(
      children: [
        duplicateUser(),
      ],
    ));
  }
}



Widget duplicateUser() {
  List<Widget> users = [];
  for (var i = 0; i < 20; i++) {
    users.add(PostItem());
  }
  return Column(
    children: users,
  );
}
