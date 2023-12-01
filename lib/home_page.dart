import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.1,
            right: 35,
            left: 35,
          ),
          child: Column(
            children: [
              Container(
                width: 400,
                height: 220.8,
                child: Image.asset('assets/3.jpg'),
              ),
              Container(
                width: 400,
                height: 70,
              ),
              Container(
                width: 400,
                height: 30,
                child: Center(
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 30,
                child: Center(
                  child: Text(
                    "Get all the info at your fingertips",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 100,
              ),
              Container(
                width: 300,
                height: 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  child: Text("Login"),
                  onPressed: () {
                    Navigator.pushNamed(context, 'login_page');
                  },
                ),
              ),
              Container(
                width: 400,
                height: 20,
              ),
              Container(
                width: 300,
                height: 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  child: Text("Don't have an account?  Sign up !"),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
