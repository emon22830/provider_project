import 'package:flutter/material.dart';
import 'package:provider_project/utils/routes/routes_name.dart';
import 'package:provider_project/view/home_screen.dart';

import '../utils/routes/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
          Navigator.pushNamed(context, RoutesName.home);
        },
          child: Text('Click'),
        ),
      )
    );
  }
}
