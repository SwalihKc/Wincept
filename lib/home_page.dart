import 'package:flutter/material.dart';
import 'package:wincept/LoginModel.dart';
import 'package:wincept/fetchData.dart';
import 'package:wincept/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  Widget build(BuildContext context) {
    LoginModel? obj;
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Column(
        children: [
          Text(
            'English(Us)',
            style: TextStyle(color: Color.fromARGB(255, 197, 190, 190)),
          ),
          SizedBox(
            height: screenSize.height / 6.4,
          ),
          Image.asset(
            'assets/Threads Logo.png',
          ),
          SizedBox(
            height: screenSize.height / 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
                 style: TextStyle(color: Colors.white),
              controller: userNameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 189, 183, 183)),
                  ),
                  fillColor: Colors.transparent,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 189, 183, 183)),
                  ),
                  hintText: 'User name,Email or Mobile Number',
                  hintStyle:
                      TextStyle(color: const Color.fromARGB(255, 92, 85, 85)),
                  filled: true),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              controller: passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 189, 183, 183),
                    ),
                  ),
                  fillColor: Colors.transparent,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 189, 183, 183)),
                  ),
                  hintText: 'Password',
                  hintStyle:
                      TextStyle(color: const Color.fromARGB(255, 92, 85, 85)),
                  filled: true),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                createAlbum(userNameController.text, passwordController.text);
                
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Second(),
                      ));
             
              },
              child: Text('Continue')),
          SizedBox(
            height: screenSize.height / 7,
          ),
          Image.asset('assets/Meta_Platforms_Inc._logo 1.png')
        ],
      ),
    );
  }
}
