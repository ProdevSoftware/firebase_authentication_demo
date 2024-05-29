import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_authentication_demo/modules/logout/presentation/screens/logout_screen.dart';
import 'package:firebase_authentication_demo/modules/login/presentation/riverpod/login_notifier.dart';
import 'package:firebase_authentication_demo/modules/login/presentation/widget/login_widget.dart';
import 'package:firebase_authentication_demo/modules/phone_auth/presentation/screen/phone_page.dart';
import 'package:firebase_authentication_demo/modules/signup/presentation/screen/signup_page.dart';
import 'package:firebase_authentication_demo/utils/app_style.dart';
import 'package:firebase_authentication_demo/utils/color_constant.dart';
import 'package:firebase_authentication_demo/utils/image_constant.dart';
import 'package:firebase_authentication_demo/utils/string_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({
    Key? key,
    this.analytics,
  }) : super(key: key);
  final FirebaseAnalytics? analytics;

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(loginResultNotifier.notifier);
    ref.listen(loginResultNotifier, (_, LoginState state) {
      if (state.loginStatus == LoginStatus.success) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LogOutScreen(),
            ));
      }
      if (state.loginStatus == LoginStatus.error) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text(StringConstant.wentWrong)));
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
                  StringConstant.welcomeBack,
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
                  hintText: StringConstant.email,
                  icon: const Icon(
                    Icons.email,
                    color: ColorConstant.black,
                  ),
                  controller: emailController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextFieldComponent(
                  hintText: StringConstant.password,
                  icon: const Icon(
                    Icons.password,
                    color: ColorConstant.black,
                  ),
                  controller: passwordController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: GestureDetector(
                  onTap: () {
                    if (emailController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(StringConstant.emailEmpty),
                        ),
                      );
                    } else if (passwordController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(StringConstant.passwordEmpty),
                        ),
                      );
                    } else {
                      notifier.login(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                      );
                      _sendLoginEvents(emailController.text);
                    }
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
                      StringConstant.login,
                      style: AppStyle.style20W600ColorWhite,
                    )),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    StringConstant.notHaveAccount,
                    style: AppStyle.style15W400ColorBlack,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupPage(),
                          ));
                    },
                    child: Text(
                      StringConstant.signUp,
                      style: AppStyle.style15W500ColorBlue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () async {
                        try {
                          await notifier.signInWithGoogle();
                        } catch (e) {
                          print(' $e');
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content:
                                      Text(StringConstant.googleSignInFailed)));
                        }
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(ImageConstant.googleIcon),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PhonePage(),
                            ));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  ImageConstant.callIcon,
                                ))),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _sendLoginEvents(String email) async {
    if (widget.analytics != null) {
      print('Sending login event for email: $email');
      try {
        await widget.analytics!.logEvent(
          name: 'email_login_event',
          parameters: <String, dynamic>{
            'email': email,
          },
        );
        print('Login event sent successfully.');
      } catch (e) {
        print('Failed to send login event: $e');
      }
    } else {
      print('Firebase Analytics instance is null.');
    }
  }
}
