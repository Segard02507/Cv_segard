import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'theme/app_colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CvFlutterApp());
}

class CvFlutterApp extends StatelessWidget {
  const CvFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon CV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.blue,
          primary: AppColors.blue,
          secondary: AppColors.orange,
          tertiary: AppColors.honey,
          error: AppColors.red,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.blue,
          foregroundColor: Colors.white,
          centerTitle: false,
          elevation: 0,
        ),
        cardTheme: CardThemeData(
          color: AppColors.surface,
          elevation: 3,
          shadowColor: AppColors.lunarRed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(
              color: AppColors.paleHoney,
            ),
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
