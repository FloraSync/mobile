// Create an authenticated user dashboard
// Path: lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:florasync_mobile/widgets/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(
      {Key? key, required this.loggedIn, required this.responseBody})
      : super(key: key);

  final bool loggedIn;
  final String responseBody;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FloraSyncAppBar(context: context, loggedIn: loggedIn),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Mission Control!',
                style: TextStyle(
                  fontFamily: "Lemon",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'This is the home screen. You can only see this if you are logged in. $loggedIn\n $responseBody',
                style: const TextStyle(
                  fontFamily: "OpenSans",
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
