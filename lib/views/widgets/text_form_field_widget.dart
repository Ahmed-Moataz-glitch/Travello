import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({super.key, required this.controller, required this.hintText, required this.suffixIcon, required this.isPassword});
  final TextEditingController controller;
  final String hintText;
  final String suffixIcon;
  final bool isPassword;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.isPassword ? TextInputType.visiblePassword : TextInputType.emailAddress,
        obscureText: !isVisible ? widget.isPassword : false,
        decoration: InputDecoration(
          hintText: widget.hintText,
          fillColor: Color(0x33C4C4C4),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          hintStyle: TextStyle(
            color: Color(0x80000000),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          labelStyle: TextStyle(
            color: Color(0x80000000),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              if (widget.isPassword) {
                setState(() {
                  isVisible = !isVisible;
                });
              }
            },
            child: widget.isPassword
            ? !isVisible
            ? Image.asset(
              widget.suffixIcon,
              scale: 1.5,
              width: 24,
              height: 24,
            )
            : Icon(Icons.visibility_outlined, color: Color(0x80000000))
            : Image.asset(
              widget.suffixIcon,
              scale: 1.5,
              width: 24,
              height: 24,
            ),
          ),
        ),
      ),
    );
  }
}
