import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/signin.dart';
import 'package:chat_app/pages/signup_page.dart';
import 'package:chat_app/pages/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: WelcomePage.routeName,

     routes:  {
      WelcomePage.routeName:(context) => const WelcomePage(),
      SignUpPage.routeName:(context) => const SignUpPage(),
      ChatPage.routeName:(context) => const ChatPage(),
      SignInPage.routeName:(context) => const SignInPage(),
     },
     
    );
  }
}
