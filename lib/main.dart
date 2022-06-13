import 'package:entry_exit/register/student_register.dart';
import 'package:flutter/material.dart';

import 'login/student_login.dart';

Widget _defaultHome = const StudentLogin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // bool _result = await SharedService.isLoggedIn();
  // if (_result) {
  //   _defaultHome = const HomePage();
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const LoginPage(),
      routes: {
        '/': (context) => _defaultHome,
        '/login/student': (context) => const StudentLogin(),
        '/register/student': (context) => const StudentRegister()
        // '/login': (context) => const LoginPage(),
        // '/register': (context) => const RegisterPage(),
      },
    );
  }
}
