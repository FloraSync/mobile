// create an app bar widget that receives context and render the app bar with a logo if not logged in and show a smaller logo with a hamburger for nav

// Path: lib/widgets/app_bar.dart
import 'package:flutter/material.dart';

class FloraSyncAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FloraSyncAppBar({Key? key, required this.context, required this.loggedIn}) : super(key: key);

  final BuildContext context;
  final bool loggedIn;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // add 10% bottom padding to the app bar
      
      title: Image.asset(
        'assets/florasync.png',
        width: MediaQuery.of(context).size.width * 0.6,
        

      ),
      // add styling to the app bar
      backgroundColor: Colors.teal[200],
      
      
      centerTitle: true,
      leading: loggedIn ? IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ) : null,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(10),
        child: Container(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}