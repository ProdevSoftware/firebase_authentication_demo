# Firebase Authentication

This Flutter application demonstrates Firebase Authentication using various methods including email/password, Google Sign-In, and phone authentication using riverpod state-management and also add firebase analytics.

## Features

- User authentication using email/password.
- User authentication using Google Sign-In.
- User authentication using phone number verification.
- Firebase analytics to analize event.

## Getting Started

1) Check official firebase documentation for configure firebase in your app
https://firebase.google.com/docs/flutter/setup

2) Enable Authentication

    On your console, first, go to the project that you created. Now, go to Authentication tab from the right panel and you will be able to see a button for Get Started .
   
    Click on the button and then you will see a list of authentication providers which we can use in our application.
   
    Click on Email/Password and enable it. Once you enable it, you will see Enabled besides Email/Password Provider.

    Click on Google and enable it. Once you enable it, you will see Enabled besides Google Provider.
   
    Click on Phone and enable it. Once you enable it, you will see Enabled besides Phone Provider.
   
![Screenshot 2024-05-29 at 5 15 16 PM](https://github.com/ProdevSoftware/firebase_authentication_demo/assets/97152083/315675c0-f4ba-4a35-b64a-e7652900c07b)

3) Dependencies

    Add below dependencies in pubspec.yaml
```
dependencies:
  flutter_riverpod: ^2.5.1
  freezed_annotation: ^2.4.1
  firebase_core: ^2.24.2
  firebase_auth: ^4.19.5
  google_sign_in: ^6.2.1
  firebase_analytics: ^10.10.7

dev_dependencies:
  build_runner: ^2.4.9
  freezed: ^2.4.7
```

4) Code Setup

- initialize Firebase in you main file   
```
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
```

- Create instance of Firebase Auth
```
     FirebaseAuth auth = FirebaseAuth.instance;
```

- Register user using email/password
```
await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
```

- Login user using email/password
```
await auth.signInWithEmailAndPassword(
        email: event.loginRequest.email,
        password: event.loginRequest.password,
      );
```

- Login user using email/password
```
await auth.signInWithEmailAndPassword(
        email: event.loginRequest.email,
        password: event.loginRequest.password,
      );
```

- Google sign-in
```
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
```

- Phone Auth
```
      await auth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          state = state.copyWith(
            verifyNumberState:
                VerifyNumberState.verificationFailed(exception: e),
          );
        },
        forceResendingToken: resendToken,
        codeSent: (String verificationId, int? token) async {
          state = state.copyWith(
            phone: phone,
            resendToken: token,
            verificationId: verificationId,
            verifyNumberState: VerifyNumberState.codeSent(
              verificationId: verificationId,
              resendToken: token,
            ),
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );

      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: state.verificationId ?? '',
        smsCode: otp,
      );

      FirebaseAuth.instance.signInWithCredential(credential);
```

- Logout
```
   await auth.signOut();
```

- Analytics
```
  FirebaseAnalytics.instance.logEvent(
          name: 'email_login_event',
          parameters: <String, dynamic>{
            'email': email,
          },
        );
```

![Screenshot 2024-05-29 at 5 48 08 PM](https://github.com/ProdevSoftware/firebase_authentication_demo/assets/97152083/3557fc46-3afa-493b-81fe-a2b71e929174)

## Videos



https://github.com/ProdevSoftware/firebase_authentication_demo/assets/97152083/ba1df3d0-ba06-4bcb-9fd2-e914277c123b



https://github.com/ProdevSoftware/firebase_authentication_demo/assets/97152083/5c6a280c-dfec-4ca2-9b1c-b69ac672f47f


