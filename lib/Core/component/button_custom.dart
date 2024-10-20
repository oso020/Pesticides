import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonCustom extends StatelessWidget {
  final String buttonName;
  final Function onTap;
  const ButtonCustom(
      {super.key, required this.buttonName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFA11B1B),

        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r), // Rounded corners with 16 radius
        ),
      ),
      onPressed: () {
        onTap();
      },
      child: Text(buttonName, style: Theme.of(context).textTheme.titleSmall),
    );
  }
}
