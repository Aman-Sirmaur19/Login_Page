import 'package:flutter/material.dart';

class preView extends StatefulWidget {
  const preView({super.key});

  @override
  State<preView> createState() => _previewState();
}

class _previewState extends State<preView> {
  @override
  void initState() {
    super.initState();
    _navigate();
  }

  _navigate() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});
    Navigator.pushNamed(context, 'home_page');
  }

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
        body: Column(
          children: [
            SizedBox(height: 350),
            Center(
              child: Text(
                "CodeForces\n  Visualizer",
                style: TextStyle(
                  color: (Colors.yellowAccent),
                  fontSize: 40,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            SizedBox(height: 150),
            Text(
              "\n\n\n\n\n\n\nLOOPR",
              style: TextStyle(
                  color: (Colors.yellowAccent),
                  fontSize: 15,
                  fontWeight: FontWeight.w800),
            )
          ],
        ),
      ),
    );
  }
}
