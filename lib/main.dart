import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/layouts/blogs_layout.dart';
import 'package:portfolio/layouts/home_layout.dart';
import 'package:portfolio/layouts/register_layout.dart';
import 'package:portfolio/layouts/sign_in_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeLayout(),
        '/signIn': (context) => SignInLayout(),
        '/register': (context) => RegisterLayout(),
        '/blogs': (context) => BlogsLayout(),
      },
    );
  }
}
