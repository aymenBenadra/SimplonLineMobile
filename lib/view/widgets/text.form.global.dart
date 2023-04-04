import 'package:flutter/material.dart';

class TextFormGlobal extends StatelessWidget {
  const TextFormGlobal({super.key, required this.controller, required this.text, required this.textInputType, required this.obscure});
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
       var sizeWidth = MediaQuery.of(context).size.width;
       var sizeHeight = MediaQuery.of(context).size.height;
    return Container(
      height: sizeHeight * 0.08,
      padding: const EdgeInsets.only(
        top: 3,
        left: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 7,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(0),
          hintStyle: const TextStyle(
            height: 1,
          ),
        ),
      ),
    );
  }
}
