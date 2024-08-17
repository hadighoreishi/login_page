import 'package:flutter/material.dart';

class Login_page extends StatelessWidget {
  Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 54, 96),
        title: Text(
          "login",
          style: TextStyle(color: Colors.white),
        ),
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
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 233, 224, 224),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30), // shift text right
              ),
            ),
            SizedBox(
              width: 50,
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 233, 224, 224),
                  contentPadding: EdgeInsets.symmetric(horizontal: 30)),
            ),
            SizedBox(
              width: 50,
              height: 50,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 11, 111, 193),
                ),
                child: Text('Forget Password !'),
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('elevator ');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 237, 229, 16),
                    iconColor: Colors.black
                    // Set the background color to light blue
                    ),
                child: const Text(
                  "Log In",
                  style: TextStyle(color: Colors.black),
                ),
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                foregroundColor: Colors.blue,
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    width: 50,
                    height: 50,
                  ),
                  Text('Login Goggle ...'),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text('Sign Up',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
