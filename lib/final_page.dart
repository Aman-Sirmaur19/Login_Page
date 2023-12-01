import 'package:flutter/material.dart';

class MyFinalPage extends StatefulWidget {
  const MyFinalPage({super.key});

  @override
  State<MyFinalPage> createState() => _MyFinalPageState();
}

class _MyFinalPageState extends State<MyFinalPage> {
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
            top: MediaQuery.of(context).size.height * 0.4,
            right: 35,
            left: 35,
          ),
          child: Column(
            children: [
              Container(
                child: Text(
                  "Hurray! Successfully signed in!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
