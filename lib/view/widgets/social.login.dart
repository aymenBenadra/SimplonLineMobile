import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simplonmobile/utils/global.colors.dart';
import 'package:simplonmobile/utils/global.size.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpacing(of: 35),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Vous n\'avez pas encore vos identifiants ?',
            style: TextStyle(
              color: GlobalColors.textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Demandez votre invitation à :',
            style: TextStyle(
              color: GlobalColors.textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Votre formateur ou bien le resposable ou bien :',
            style: TextStyle(
              color: GlobalColors.textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            '- support-sol@simplon.co -',
            style: TextStyle(
              color: GlobalColors.mainColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        // const SizedBox(height: 15),
        // Container(
        //   width: MediaQuery.of(context).size.width * 0.8,
        //   child: Row(
        //     children: [
        //       ////Google
        //       Expanded(
        //         child: Container(
        //           alignment: Alignment.center,
        //           height: 55,
        //           decoration: BoxDecoration(
        //             color: Colors.white,
        //             borderRadius: BorderRadius.circular(6),
        //             boxShadow: [
        //               BoxShadow(
        //                 color: Colors.black.withOpacity(0.1),
        //                 blurRadius: 10,
        //               ),
        //             ]
        //           ),
        //           child: SvgPicture.asset('assets/images/google.svg',height: 30,),
        //         ),
        //       ),
        //       const SizedBox(height: 10),
        //        ////facebook
        //       Expanded(
        //         child: Container(
        //           alignment: Alignment.center,
        //           height: 55,
        //           decoration: BoxDecoration(
        //             color: Colors.white,
        //             borderRadius: BorderRadius.circular(6),
        //             boxShadow: [
        //               BoxShadow(
        //                 color: Colors.black.withOpacity(0.1),
        //                 blurRadius: 10,
        //               ),
        //             ]
        //           ),
        //           child: SvgPicture.asset('assets/images/facebook.svg',height: 25,),
        //         ),
        //       ),
        //       const SizedBox(height: 10),
        //        ////Twitter
        //       Expanded(
        //         child: Container(
        //           alignment: Alignment.center,
        //           height: 55,
        //           decoration: BoxDecoration(
        //             color: Colors.white,
        //             borderRadius: BorderRadius.circular(6),
        //             boxShadow: [
        //               BoxShadow(
        //                 color: Colors.black.withOpacity(0.1),
        //                 blurRadius: 10,
        //               ),
        //             ]
        //           ),
        //           child: SvgPicture.asset('assets/images/twitter.svg',height: 20,),
        //         ),
        //       )
        //     ],
        //   ),
        // )
      ],
    );
  }
}
