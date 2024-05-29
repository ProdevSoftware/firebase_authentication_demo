import 'package:firebase_authentication_demo/modules/logout/presentation/screens/logout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_authentication_demo/utils/app_style.dart';
import 'package:firebase_authentication_demo/utils/color_constant.dart';
import 'package:firebase_authentication_demo/utils/string_constant.dart';
import 'package:pinput/pinput.dart';

import '../riverpod/phone_notifier.dart';

class OtpPage extends ConsumerStatefulWidget {
  final String verificationId;
  final int resendToken;
  final String phone;

  OtpPage({
    Key? key,
    required this.verificationId,
    required this.resendToken,
    required this.phone,
  }) : super(key: key);

  @override
  ConsumerState<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends ConsumerState<OtpPage> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(phoneResultNotifier.notifier);
    final state = ref.watch(phoneResultNotifier);

    ref.listen(phoneResultNotifier, (previous, phoneState) {
      if (phoneState.otpStatus == OtpStatus.success) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const LogOutScreen(),
            maintainState: true,
          ),
              (Route<dynamic> route) => false,
        );
      } else if (phoneState.otpStatus == OtpStatus.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(StringConstant.wentWrong),
          ),
        );
      }
    });

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Text(
              StringConstant.otpVerify,
              style: AppStyle.style26W600ColorBlue,
            ),
            const SizedBox(height: 20),
            Text(
              StringConstant.enterOTP,
              style: AppStyle.style15W400ColorBlack,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Pinput(
                controller: otpController,
                length: 6,
                autofocus: true,
                closeKeyboardWhenCompleted: true,
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () {

                notifier.otpVerify(otp: otpController.text.trim());
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
                    StringConstant.submit,
                    style: AppStyle.style20W600ColorWhite,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                notifier.phoneVerify(
                  phone: state.phoneNumberWithCountryCode,
                  // resendToken: widget.resendToken,
                );
              },
              child: Text(
                StringConstant.resendOtp,
                style: AppStyle.style15W500ColorBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
