import 'package:firebase_authentication_demo/modules/login/presentation/riverpod/login_notifier.dart';
import 'package:firebase_authentication_demo/modules/login/presentation/screen/login_page.dart';
import 'package:firebase_authentication_demo/utils/app_style.dart';
import 'package:firebase_authentication_demo/utils/color_constant.dart';
import 'package:firebase_authentication_demo/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/string_constant.dart';

class LogOutScreen extends ConsumerStatefulWidget {
  const LogOutScreen({super.key});

  @override
  ConsumerState<LogOutScreen> createState() => _LogOutScreenState();
}

class _LogOutScreenState extends ConsumerState<LogOutScreen> {
  late LoginNotifier notifier;

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(loginResultNotifier.notifier);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                StringConstant.homeScreen,
                style: AppStyle.style26W600ColorBlue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          ImageConstant.bgImage ),),),
                ),
              ),
            ),
            const SizedBox(height: 40,),
            GestureDetector(
              onTap: () {
                notifier.signOut();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage(),));
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstant.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    StringConstant.signOut,
                    style: AppStyle.style20W600ColorWhite,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
