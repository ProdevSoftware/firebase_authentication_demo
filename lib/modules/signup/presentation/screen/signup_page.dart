import 'package:firebase_authentication_demo/modules/login/presentation/screen/login_page.dart';
import 'package:firebase_authentication_demo/modules/signup/presentation/riverpod/signup_notifier.dart';
import 'package:firebase_authentication_demo/utils/app_style.dart';
import 'package:firebase_authentication_demo/utils/color_constant.dart';
import 'package:firebase_authentication_demo/utils/image_constant.dart';
import 'package:firebase_authentication_demo/utils/string_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../login/presentation/widget/login_widget.dart';

class SignupPage extends ConsumerStatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends ConsumerState<SignupPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(signupResultNotifier.notifier);

    ref.listen(signupResultNotifier, (_, SignupState state) {
      if (state.signupStatus == SignupStatus.success) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ));
      }
      if (state.signupStatus == SignupStatus.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text(StringConstant.wentWrong)),
        );
      }
    });

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  StringConstant.createAccount,
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
                        image: AssetImage(ImageConstant.bgImage),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextFieldComponent(
                  controller: emailController,
                  icon: const Icon(
                    Icons.email,
                    color: ColorConstant.black,
                  ),
                  hintText: StringConstant.email,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextFieldComponent(
                  controller: passwordController,
                  icon: const Icon(
                    Icons.password,
                    color: ColorConstant.black,
                  ),
                  hintText: StringConstant.password,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: GestureDetector(
                  onTap: () {
                    notifier.signup(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                    );
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
                        StringConstant.signUp,
                        style: AppStyle.style20W600ColorWhite,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    StringConstant.alreadyAccount,
                    style: AppStyle.style15W400ColorBlack,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      StringConstant.logIn,
                      style: AppStyle.style15W500ColorBlue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
