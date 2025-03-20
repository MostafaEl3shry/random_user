import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/providers/RegistrationProvider.dart';
import 'package:untitled1/providers/user_provider.dart';
import 'package:untitled1/screens/LoginScreen.dart';
import 'package:untitled1/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => UserProvider(),),
      ChangeNotifierProvider(create: (context) => RegisterProvider(),),
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}
