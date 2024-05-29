import 'package:firebase_authentication_demo/modules/phone_auth/presentation/riverpod/phone_notifier.dart';
import 'package:firebase_authentication_demo/modules/phone_auth/presentation/screen/otp_page.dart';
import 'package:firebase_authentication_demo/utils/string_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:firebase_authentication_demo/utils/app_style.dart';
import 'package:firebase_authentication_demo/utils/color_constant.dart';
import 'package:firebase_authentication_demo/utils/image_constant.dart';


class PhonePage extends ConsumerStatefulWidget {
  const PhonePage({Key? key}) : super(key: key);

  @override
  ConsumerState<PhonePage> createState() => _PhonePageState();
}

class _PhonePageState extends ConsumerState<PhonePage> {
  late PhoneNotifier notifier;

  TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    notifier = ref.read(phoneResultNotifier.notifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(phoneResultNotifier);
    ref.listen(phoneResultNotifier, (_, PhoneState state) {
      state.verifyNumberState.whenOrNull(
        verificationFailed: (exception) {
          print('=====================${exception.message}');
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('${exception.message}')));
        },
        codeSent: (verificationId, resendToken) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => OtpPage(
                verificationId: verificationId,
                phone: phoneController.text,
                resendToken: resendToken ?? 0,
              ),
            ),
          );
        },
      );
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
                  StringConstant.logInWithPhone,
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
                child: IntlPhoneField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    labelText: StringConstant.phoneNumber,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    notifier.phoneNumber(
                        phoneNumberWithCountryCode: phone.completeNumber);
                    print(phone.completeNumber);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: GestureDetector(
                  onTap: () {
                     print(phoneController.text);

                    if (state.verifyNumberState !=
                        const VerifyNumberState.loading()) {
                      notifier.phoneVerify(
                        phone: state.phoneNumberWithCountryCode,
                      );
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
                      child: Visibility(
                        visible: state.verifyNumberState !=
                            const VerifyNumberState.loading(),
                        replacement: const CircularProgressIndicator(
                          color: ColorConstant.white,
                        ),
                        child: Text(
                          StringConstant.getOtp,
                          style: AppStyle.style20W600ColorWhite,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
