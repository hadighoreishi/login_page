import 'package:flutter/material.dart';
import 'components/tool_bar.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(),
      body: Column(
        children: [
          Image.asset('assets/images/download.jpeg'),
          Text(
            'Hello I am bob cat',
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "Likes",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Followes",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Friends",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 5,
            height: 40,
          ),
          Row(
            children: [Text("I")],
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
