import 'package:flutter/material.dart';
import 'package:login_page/pages/counter_page.dart';
import 'package:login_page/pages/home_page.dart';
import 'package:login_page/pages/main_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 19, 157, 46),
        title: Text(
          "login",
          style: TextStyle(color: Colors.white),
        ),
      ),
      // set colum widget in the center of screen

      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context)
              .size
              .height, // Make height of screen dynamic
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //    Spacer(),
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
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 30), // shift text right
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
                        backgroundColor:
                            const Color.fromARGB(255, 11, 111, 193),
                      ),
                      child: Text('Forget Password !'),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MainPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 237, 229, 16),
                          iconColor: Colors.black
                          // Set the background color to light blue
                          ),
                      child: Text(
                        "Log In",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    width: 400,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/facebook.png',
                            width: 50,
                            height: 50,
                          ),
                          Text('Login Face Book.'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: 400,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        foregroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CounterPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sign Up',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'assets/font/your_font.ttf',
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
