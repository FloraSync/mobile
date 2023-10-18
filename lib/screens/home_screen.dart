// Create an authenticated user dashboard
// Path: lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:florasync_mobile/widgets/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.loggedIn}) : super(key: key);

  final bool loggedIn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FloraSyncAppBar(context: context, loggedIn: loggedIn),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              // Create a header that says "Mission Control" in Roboto font, size 30, and bold weight. It should take up the top 10% of the screen and be centered
              

              
            ],
          ),
        ),
      ),
    );
  }
}