import 'core/theme/theme.dart';
import 'presentation/pages/user_profile_page.dart';

//import 'presentation/pages/sign_in_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final MaterialTheme materialTheme = const MaterialTheme(TextTheme());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: materialTheme.light(),
      darkTheme: materialTheme.dark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const UserProfilePage(),
    );
  }
}
