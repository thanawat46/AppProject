import 'package:flutter/material.dart';

class Depositpage extends StatefulWidget {
  const Depositpage({super.key});

  @override
  State<Depositpage> createState() => _DepositpageState();
}

class _DepositpageState extends State<Depositpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ฝากเงิน"),
        backgroundColor: Colors.green,
      ),
      body: Container(

      ),
    );
  }
}
