   import 'package:flutter/material.dart';
import 'package:provider_project/utils/routes/routes.dart';
import 'package:provider_project/utils/routes/routes_name.dart';
import 'package:provider_project/view/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     initialRoute: RoutesName.login,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

