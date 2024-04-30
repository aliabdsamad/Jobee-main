import 'package:flutter/material.dart';
import 'package:jobee/pages/chats_list_page.dart';
import 'package:jobee/pages/craete_post_pages/create_post_page.dart';
import 'package:jobee/pages/community_page.dart';
import 'package:jobee/pages/junior_info/junior_info_page1.dart';
import 'package:jobee/pages/junior_info/junior_info_page2.dart';
import 'package:jobee/pages/login_page.dart';
import 'package:jobee/pages/notifications_page.dart';
import 'package:jobee/pages/onboarding_pages/onboarding_page.dart';
import 'package:jobee/pages/select_position_page.dart';
import 'package:jobee/pages/sign_up_page.dart';
import 'package:jobee/profile/presentation/screens/Tests%20&%20Quiz/create_quiz_screen_1.dart';
import 'package:jobee/profile/profile.dart';
import 'package:jobee/widgets/bottom_nav_bar.dart';
import 'dart:ui' ;

import 'profile/presentation/screens/Tests & Quiz/create_quiz_screen.dart';
import 'profile/presentation/screens/Tests & Quiz/create_quiz_screen_2.dart';
import 'profile/presentation/screens/Tests & Quiz/create_quiz_screen_3.dart';
import 'profile/presentation/screens/Tests & Quiz/create_quiz_screen_4.dart';
import 'profile/presentation/screens/Tests & Quiz/create_quiz_screen_5.dart';



void main() {
  runApp(const Jobee());
}

class Jobee extends StatelessWidget {
  const Jobee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        //from profile
        CreateCVScreen.id:(context) => const CreateCVScreen(),
        CreateCV1Screen.id:(context) => const CreateCV1Screen(),
        CreateCV2Screen.id:(context) => const CreateCV2Screen(),
        CreateCV3Screen.id:(context) => const CreateCV3Screen(),
        CreateCV4Screen.id:(context) => const CreateCV4Screen(),
        CreateCV5Screen.id:(context) => const CreateCV5Screen(),
        CreateJobSaved.id:(context) => const CreateJobSaved (),
        EditProfile.id:(context) => EditProfile (),
       CreateQuizScreen.id:(context) => const CreateQuizScreen (),
        CreateQuiz1Screen.id:(context) => const CreateQuiz1Screen(),
        CreateQuiz2Screen.id:(context) => const CreateQuiz2Screen(),
        CreateQuiz3Screen.id:(context) => const CreateQuiz3Screen(),
        CreateQuiz4Screen.id:(context) => const CreateQuiz4Screen(),
        CreateQuiz5Screen.id:(context) => const CreateQuiz5Screen(),


        //old
        OnBoardingPage.id: (context) => OnBoardingPage(),
        LogInPage.id: (context) => const LogInPage(),
        SignUpPage.id: (context) => const SignUpPage(),
        selectPositionPage.id: (context) => const selectPositionPage(),
        JuniorInfoPage1.id: (context) => const JuniorInfoPage1(),
        JuniorInfoPage2.id: (context) => const JuniorInfoPage2(),
        CommunityPage.id: (context) => const CommunityPage(),
        CreatePostPage.id: (context) => const CreatePostPage(),
        ChatsListPage.id: (context) => ChatsListPage(),
        NotificationPage.id: (context) => const NotificationPage(),
        BottomNavBar.id: (context) => const BottomNavBar(),
      },
      initialRoute: OnBoardingPage.id,
    );
  }
}
