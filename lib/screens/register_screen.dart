// Path: lib/screens/register_screen.dart
import 'package:flutter/material.dart';
import 'package:florasync_mobile/widgets/app_bar.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // implement FloraSyncAppBar from lib/widgets/app_bar.dart
      appBar: FloraSyncAppBar(context: context, loggedIn: false),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // centered Florasync slogan in roboto font, 
              const Text(
                'Join us in protecting the worlds most precious resource, water.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'We\'ll help you keep your plants happy and healthy.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 50),
              const TextField(
                decoration: InputDecoration(hintText: 'Name'),
              ),
              // prefix this with a @ symbol
              const TextField(
                decoration: InputDecoration(
                  // lower prefix 20 px from top
                  isDense: true,
                  prefixIcon:Text("@"),
                  prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
                  hintText: 'Handle'
                ),
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'Email'),
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              // Register Button
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: const Text('Register with Email'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.teal[300], backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.g_mobiledata_rounded, color: Colors.blue), // Replace with suitable email icon
                label: const Text('Register with Google'),

                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blue[300], backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.account_tree_outlined, color: Colors.white), // Replace with suitable GitHub icon
                label: const Text('Register with Github'),

                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, 
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.computer, color: Colors.white), // Replace with suitable Microsoft icon
                label: const Text('Register with Microsoft'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blue, 
                  backgroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
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