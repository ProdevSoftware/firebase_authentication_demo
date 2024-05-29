import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_authentication_demo/firebase_options.dart';
import 'package:firebase_authentication_demo/modules/login/presentation/screen/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
  FirebaseAnalyticsObserver(analytics: analytics);


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      navigatorObservers: <NavigatorObserver>[observer],
      debugShowCheckedModeBanner: false,
      home:  LoginPage(analytics:analytics,),
    );
  }
}
