import 'package:flutter/material.dart';

class dashboard extends StatelessWidget {
  const dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.cyan,
            child: Container(
              color: Colors.black,
              height: 200,
              width: double.infinity,
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
