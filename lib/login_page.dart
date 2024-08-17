import 'package:flutter/material.dart';

class Login_page extends StatelessWidget {
  Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("login"),
      ),
      // set colum widget in the center of screen

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 50,
              height: 50,
            ),
            Text('Login to Continue'),
            SizedBox(
              width: 50,
              height: 50,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'User Name',
              ),
            ),
            SizedBox(
              width: 50,
              height: 50,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(
              width: 50,
              height: 50,
            ),
            TextButton(
                onPressed: () {
                  print('foreget password ');
                },
                child: Text('Forget Password !')),
            SizedBox(
              width: 50,
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint('elevator ');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue, iconColor: Colors.black
                  // Set the background color to light blue
                  ),
              child: const Text(
                "Log In",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              width: 50,
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/facebook.png',
                    width: 50,
                    height: 50,
                  ),
                  Text('Login Face Book.')
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 50,
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    width: 50,
                    height: 50,
                  ),
                  Text('Login Goggle .'),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextButton(onPressed: () {}, child: Text('Sign Up')),
          ],
        ),
      ),
    );
  }
}
