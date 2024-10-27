import 'package:flutter/material.dart';

import '../colors.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress;
  const RoundButton({super.key,
  required this.title,
    this.loading = false,
    required this.onPress,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        height: 40,
        width: 200,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
              borderRadius: BorderRadius.circular(10),
        ),
        child:loading?CircleAvatar(): Center(child: Text('Login')),
      ),
    );
  }
}
