// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplonmobile/utils/global.colors.dart';
import 'package:simplonmobile/utils/global.routes.dart';

class ButtonGlobal extends StatefulWidget {
  const ButtonGlobal({super.key});

  @override
  State<ButtonGlobal> createState() => _ButtonGlobalState();
}

class _ButtonGlobalState extends State<ButtonGlobal> {
  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        print('Login');
      },
      child: Container(
        alignment: Alignment.center,
        height: sizeHeight * 0.08,
        decoration: BoxDecoration(
            color: GlobalColors.mainColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
              ),
            ]),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, GlobalRoutes.DashboardView);
            },
            
            child: const Text(
              'Sign In',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            ),
      ),
    );
  }
}
