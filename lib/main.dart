import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:florasync_mobile/screens/splash_screen.dart';
import 'package:florasync_mobile/screens/login_screen.dart';
import 'package:florasync_mobile/screens/home_screen.dart';
import 'package:florasync_mobile/screens/register_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(FloraSync());
  // whenever your initialization is completed, remove the splash screen:
  FlutterNativeSplash.remove();
}

class FloraSync extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(loggedIn: false),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(loggedIn: true),
        '/register': (context) => RegisterScreen(),
      },
    );
  }
}

