import 'package:flutter/material.dart';

import 'ShowTextField.dart';
import 'database/function.dart';

class admin extends StatefulWidget {
  const admin({super.key});

  @override
  State<admin> createState() => _adminState();
}


class _adminState extends State<admin> {
  @override

  void initState() {
    super.initState();
    _initializeUserList();
  }

  Future<void> _initializeUserList() async {
    await getUserList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("--------------  ADMIN  --------------"),
      ),
      body: SafeArea(
        child: Column(
          children: [
        
            Expanded(child: ShowTextField())
          ],
        ),
      ),

    );
  }
}
