import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:simplonmobile/utils/global.colors.dart';
import 'package:simplonmobile/view/splash.view.dart';
import 'package:simplonmobile/view/widgets/button.global.dart';
import 'package:simplonmobile/view/widgets/social.login.dart';
import 'package:simplonmobile/view/widgets/text.form.global.dart';
import 'package:http/http.dart' as http;

import '../utils/global.size.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

// method sign in 
signIn(String email,String password) async{
        final response = await http.get(Uri.parse("db/apprenant.json?email="+email+"&password="+password));
        if(response.statusCode == 200 && !(jsonDecode(response.body).isEmpty)){
                 }
        else{ return;}
    }


  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          width: sizeWidth,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: sizeHeight * 0.04),
              Container(
                alignment: Alignment.center,
                
                child: Text(
                  'SimplonLine',
                  style: TextStyle(
                    color: GlobalColors.mainColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const VerticalSpacing(of: 35),
              Text(
                textAlign: TextAlign.center,
                'SimplonLine La plateforme collaborative d\'apprentissage en pédagogie active',
                style: TextStyle(
                  color: GlobalColors.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              //// obligation
             const VerticalSpacing(of: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Tous les champs sont obligatoires',
                    style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),

              const VerticalSpacing(of: 20),
              //// Email Input
              TextFormGlobal(
                controller: emailController,
                text: 'Email',
                obscure: false,
                textInputType: TextInputType.emailAddress,
              ),

              const VerticalSpacing(of: 20),
              //// Pass Input
              TextFormGlobal(
                controller: passwordController,
                text: 'Password',
                obscure: true,
                textInputType: TextInputType.text,
              ),
              const VerticalSpacing(of: 20),
              const ButtonGlobal(),
              const VerticalSpacing(of: 20),
              const SocialLogin(),
            ],
          ),
        )),
      ),
      bottomNavigationBar: Container(
        height: sizeHeight * 0.08,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Powered By',
            ),
            InkWell(
              child: Text(
                ' SImplon',
                style: TextStyle(
                  color: GlobalColors.mainColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
