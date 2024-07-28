import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Profile",
        ),
      ),
      body: hi(),
    );
  }
}

class hi extends StatefulWidget {
  const hi({super.key});

  @override
  State<hi> createState() => _hiState();
}

class _hiState extends State<hi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage(
                    "https://wallpaperaccess.com/full/9327602.jpg"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "غوكولراج",
            )
          ],
        ),
      ),
    );
  }
}
