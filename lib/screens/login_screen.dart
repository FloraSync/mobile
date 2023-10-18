import 'package:flutter/material.dart';
import 'package:florasync_mobile/widgets/app_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // implement FloraSyncAppBar from lib/widgets/app_bar.dart
      appBar: FloraSyncAppBar(context: context, loggedIn: true),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // centered Florasync slogan in roboto font, 
              const Text(
                'Making plants love technology',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              const TextField(
                decoration: InputDecoration(hintText: 'Email'),
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              // Login Button
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: const Text('Login'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.teal[300], backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),

              // Create an Account Button
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text('Create an Account'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.teal[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              // ElevatedButton.icon(
              //   icon: const Icon(Icons.g_mobiledata_rounded, color: Colors.blue), // Replace with suitable email icon
              //   label: const Text('Login with Google'),

              //   onPressed: () {},
              //   style: ElevatedButton.styleFrom(
              //     foregroundColor: Colors.blue, backgroundColor: Colors.white,
              //   ),
              // ),
              // ElevatedButton.icon(
              //   icon: const Icon(Icons.account_tree_outlined, color: Colors.white), // Replace with suitable GitHub icon
              //   label: const Text('Login with Github'),

              //   onPressed: () {},
              //   style: ElevatedButton.styleFrom(
              //     foregroundColor: Colors.white, backgroundColor: Colors.black,
              //   ),
              // ),
              // ElevatedButton.icon(
              //   icon: const Icon(Icons.computer, color: Colors.white), // Replace with suitable Microsoft icon
              //   label: const Text('Login with Microsoft'),
              //   onPressed: () {},
              //   style: ElevatedButton.styleFrom(
              //     foregroundColor: Colors.blue, backgroundColor: Colors.yellow,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}