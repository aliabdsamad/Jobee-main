import 'package:flutter/material.dart';
import 'package:jobee/core/core.dart';
import 'package:jobee/core/widgets/my_app_bar.dart';

import '../../../../widgets/custom_button.dart';
import '../create_cv_screen_1.dart';
import 'create_quiz_screen_1.dart';


class CreateQuiz5Screen extends StatelessWidget {
  const CreateQuiz5Screen({super.key});
  static const String id='CreateQuiz5Screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: myAppBar(context: context, title: "Tests & Quiz's"),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 5,),

            Center(
              child: Text(
                'Congratulation ',
                style: TextStyle(fontSize:20,
                    height: 2,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat',
                    color: Color(0xFF000000)
                ),
              ),
            ),
            //SizedBox(height: 5,),
            Center(
              child: Text(
                'You made it Well ! ',
                style: TextStyle(fontSize:14 ,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                    color: Color(0xFF000000)
                ),
              ),
            ),
          SizedBox(),
            SizedBox(),
            Image.asset(AssetsPath.finalquiz),
            SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Your Score is ',
                  style: TextStyle(fontSize:20 ,
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      color: Color(0xFF000000)
                  ),
                ),
                  Text(
                    '  200 ',
                    style: TextStyle(fontSize:20 ,
                        height: 1.5,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat',
                        color: Color.fromRGBO(7, 42, 200, 1),
                    ),
                ),
              ],
            ),
           Spacer( ),





            Padding(
              padding: const EdgeInsets.all(12),
              child: CustomButton(
                onTap: ()=> Navigator.pushNamed(context, CreateQuiz1Screen.id),
                text: 'Next Level',
                color: Color.fromRGBO(7, 42, 200, 1),
                textColor: Colors.white,
              ),
            ),
            SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }
}
