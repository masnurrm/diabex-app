import 'package:diabex/src/features/onboarding/views/splash_screen.dart';
import 'package:diabex/src/provider/global.dart';
import 'package:diabex/src/routing/route_generator.dart';
import 'package:diabex/src/styles/colors_styles.dart';
import 'package:diabex/src/styles/text_styles.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Global())
      ],
      child: Consumer<Global>(
        builder: (context, value, _) => MaterialApp(
        title: 'Diabex',
        // initialRoute: init,
        onGenerateRoute: RouteGenerator.generateRoute,
        theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            unselectedLabelStyle: body1Regular,
            selectedLabelStyle: heading1Bold,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.kcSecondaryOrange,
            unselectedItemColor: const Color(0xffbebebe),
          ),
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen()
      ),
      )
    );
  }
}