import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:florasync_mobile/screens/login_screen.dart';
import 'package:florasync_mobile/screens/home_screen.dart';
import 'package:florasync_mobile/screens/register_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const FloraSync());
  // whenever your initialization is completed, remove the splash screen:
  FlutterNativeSplash.remove();
}

class FloraSync extends StatelessWidget {
  const FloraSync({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(loggedIn: false),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(loggedIn: true),
        '/register': (context) => const RegisterScreen(),
      },
    );
  }
}

