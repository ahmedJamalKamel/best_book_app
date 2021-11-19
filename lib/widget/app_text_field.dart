import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.textEditingController,
    required this.hint,
    required this.prefixIcon,
    this.textInputType = TextInputType.name,
    this.se=false
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String hint;
  final IconData prefixIcon;
  final TextInputType textInputType;
 final bool se;
  @override
  Widget build(BuildContext context) {
    return TextField(

      controller: textEditingController,
      keyboardType: textInputType,
      obscureText:se ,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(prefixIcon),
        enabledBorder: outlineBorder(),
        focusedBorder: outlineBorder(color: Colors.blue)
      ),
    );
  }

  OutlineInputBorder outlineBorder({Color color = Colors.grey}) {
    return OutlineInputBorder(
      borderSide:  BorderSide(
        width: 1,
        color: color,
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
