import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset('assets/Threads Logo.png'),
        centerTitle: true,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(height: 160,width: 200,decoration: BoxDecoration(border: Border.all(color: Colors.white12)),);
      },itemCount: 4,shrinkWrap: true,),
    );
  }
}
