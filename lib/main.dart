import 'package:blog_app/core/theme/theme.dart';
import 'package:blog_app/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(
      fileName:
          "/Users/satyambhargav/AndroidDevelopment/blog_app/lib/core/secrets/keys.env");
  await Supabase.initialize(
    url: dotenv.env['Supabase_Url'] ?? '',
    anonKey: dotenv.env['Anon_Key'] ?? '',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc App',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}
