import 'package:flutter/material.dart';
import 'package:chasi_bondhu/login.dart';
import 'package:chasi_bondhu/signup.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chasi Bondhu'),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  
                  Image.asset('lib/l.png'), // Ensure this asset is in your project
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                    child: Text(
                      'অজ্ঞতা সেই মাটি যেখানে অলৌকিকতার বিশ্বাস জন্ম নেয়',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Color.fromARGB(207, 6, 3, 3)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text('LOGIN'),
                  minWidth: double.infinity,
                  height: 50,
                  color: Colors.grey[300],
                ),
                SizedBox(height: 10),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: Text('SIGNUP'),
                  minWidth: double.infinity,
                  height: 50,
                  color: Colors.black,
                  textColor: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
