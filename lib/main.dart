import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simplonmobile/entity/brief.dart';
import 'package:simplonmobile/utils/global.routes.dart';
import 'package:simplonmobile/utils/global.size.dart';
import 'package:simplonmobile/view/apprenant/apprenant.view.dart';
import 'package:simplonmobile/view/apprenant/brief.view.dart';
import 'package:simplonmobile/view/apprenant/dashboard.view.dart';
import 'package:simplonmobile/view/apprenant/formateur.view.dart';
import 'package:simplonmobile/view/splash.view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalSize().init(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        GlobalRoutes.DashboardView: (context) => Dashboard(),
        GlobalRoutes.SplashView: (context) => SplashView(),
        GlobalRoutes.BriefView: (context) => BriefView(),
        GlobalRoutes.FormateurView: (context) => FormateurView(),
        GlobalRoutes.ApprenantView: (context) => ApprenantView(),


      },
    );
  }
}

// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.q
  
//   @override
//   Widget build(BuildContext context) {
//     GlobalSize().init(context);
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       routes: {
//       GlobalRoutes.DashboardView: (context) => Dashboard(),
//       GlobalRoutes.SplashView: (context) => SplashView(),
//       },
//       // home: Dashboard(),
//     );
//   }
// }



