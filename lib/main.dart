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

// class FloraSync extends StatelessWidget {
//   const FloraSync({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/login',
//       routes: {
//         '/': (context) => const HomeScreen(loggedIn: false, responseBody: ""),
//         '/login': (context) => LoginScreen(),
//         '/home': (context) =>
//             const HomeScreen(loggedIn: true, responseBody: ""),
//         '/register': (context) => const RegisterScreen(),
//       },
//     );
//   }
// }

class FloraSync extends StatelessWidget {
  const FloraSync({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => const RegisterScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/home') {
          final args = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (context) => HomeScreen(
              loggedIn: args['loggedIn'] ?? false,
              responseBody: args['responseBody'] ?? "",
            ),
          );
        }
        // Define other dynamic routes here if necessary

        // Return null for any unspecified routes
        return null;
      },
    );
  }
}
