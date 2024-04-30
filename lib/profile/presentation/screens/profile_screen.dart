import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/core/resources/assets_path.dart';
import 'package:jobee/profile/profile.dart';

import 'Tests & Quiz/create_quiz_screen.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: SizedBox(
            height: 100,
            width: 100,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.redAccent),
                        //TODO add image
                         image: DecorationImage(image:AssetImage(AssetsPath.profile1),

                    alignment: Alignment.bottomRight,
                  ),
            ),
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, EditProfile.id),
                    child:  CircleAvatar(

                      child:SvgPicture.asset('assets/icons_svg/edit.svg'),



                      )
   ),
                  ),

                )
                ],
            ),

          ),

        ),
        SizedBox(height:5 ,),
        Center(child:Text(
          'Abdallah Ahmed ',
          style: TextStyle(fontSize:12 ,
              height: 2,
              fontWeight: FontWeight.w600,
              fontFamily: 'Montserrat',
              color: Color(0xFF000000)
          ),
        ),
       ),
       // SizedBox(),
       Center(child: Text(
    'abdallahzikrallah@gmail.com ',
    style: TextStyle(
    color:Color(0xFF848484),
    fontSize:8 ,
      height: 2,

    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    ) ,
    ),
       ),
        SizedBox(height: 10,),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              child: Column(
                children: [
                  Text(
                    'Track Name ',
                    style: TextStyle(fontSize:16 ,
                        height: 1.5,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        color: Color(0xFF000000)
                    ),
                  ),
                  SizedBox(
                    height:10 ,
                  ),
                  Text("Flutter",
                    style:TextStyle(fontSize:14 ,
                        height: 1.5,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        color: Color(0xFF072AC8),

                    ),
                  ),

                ],
              ),
            ),
           // SizedBox(width: 20,),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Tests Score ',
                      style: TextStyle(fontSize:16 ,
                          height: 1.5,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          color: Color(0xFF000000)
                      ),
                    ),
                    SizedBox(
                      height:10 ,
                    ),
                    Row(
                      children: [
                       // Image.asset(AssetsPath.o),

                        Text("125",

                          style:TextStyle(fontSize:14 ,
                            height: 1.5,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                            color: Color(0xFF072AC8),

                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),


          ],
        ),


        ListTile(
          // onTap: () => Navigator.pushNamed(context, CreateCVScreen.id),
          leading: AspectRatio(
            aspectRatio: 1,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(245, 246, 255, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SvgPicture.asset(
                AssetsPath.coursesIcon,
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: const Text('My Courses'),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          onTap: () => Navigator.pushNamed(context, CreateCVScreen.id),
          leading: AspectRatio(
            aspectRatio: 1,
            child: Container(
              margin: const EdgeInsets.all(4),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(245, 246, 255, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SvgPicture.asset(
                AssetsPath.cvIcon,
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: const Text('My CV'),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
           onTap: () => Navigator.pushNamed(context, CreateQuizScreen.id),
          leading: AspectRatio(
            aspectRatio: 1,
            child: Container(
              margin: const EdgeInsets.all(4),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(245, 246, 255, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SvgPicture.asset(
                AssetsPath.testIcon,
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: const Text('Tests and Quizes'),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          // onTap: () => Navigator.pushNamed(context, CreateCVScreen.id),
          leading: AspectRatio(
            aspectRatio: 1,
            child: Container(
              margin: const EdgeInsets.all(4),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(245, 246, 255, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SvgPicture.asset(
                AssetsPath.dollarIcon,
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: const Text('Payment'),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(

        onTap: () => Navigator.pushNamed(context, CreateJobSaved.id),
          leading: AspectRatio(
            aspectRatio: 1,
            child: Container(
              margin: const EdgeInsets.all(4),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(245, 246, 255, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SvgPicture.asset(
                AssetsPath.jobIcon,
                fit: BoxFit.contain,


              ),
            ),
          ),
          title: const Text('Jop Saved'),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
         // onTap: ()=> Navigator.pushNamed(context, CreateCV1Screen.id),
         // onTap: () => Navigator.pushNamed(context, CreateJobSaved.id),
          leading: AspectRatio(
            aspectRatio: 1,
            child: Container(
              margin: const EdgeInsets.all(4),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(245, 246, 255, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SvgPicture.asset(
                AssetsPath.settingIcon,
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: const Text('App Setting'),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}

class _ProfileWidget extends StatelessWidget {
  const _ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
