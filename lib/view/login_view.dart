import 'package:flutter/material.dart';
import 'package:provider_project/utils/routes/routes_name.dart';
import 'package:provider_project/view/home_screen.dart';

import '../utils/routes/routes.dart';
import '../utils/utils.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Login'),
        centerTitle: true,
      ),
        body: Center(
      child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                focusNode: emailFocusNode,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.alternate_email),
                ),
                onFieldSubmitted: (value){
                  Utils.fieldFocusChange(context, emailFocusNode, passwordFocusNode);
                  // FocusScope.of(context).requestFocus(passwordFocusNode);
                },
              ),

             ValueListenableBuilder(
                 valueListenable: _obscurePassword,
                 builder: (context, value, child){
                   return  TextFormField(
                     controller: passwordController,
                     obscureText: _obscurePassword.value,
                     obscuringCharacter: '*',
                     focusNode: passwordFocusNode,

                     decoration: InputDecoration(
                       hintText: 'Password',
                       labelText: 'password',
                       prefixIcon: Icon(Icons.lock),
                       suffixIcon: InkWell(
                           onTap: (){
                             _obscurePassword.value =!_obscurePassword.value;
                           },
                           child: Icon(
                               _obscurePassword.value?Icons.visibility_off_outlined:Icons.visibility),
                       ),

                     ),
                   );
                 }
             ),
            ],
          )
      )
    ));
  }
}
