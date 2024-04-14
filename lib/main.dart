import 'package:flutter/material.dart';
import 'package:hauseful_flutter/screens/login_screen.dart';
// import 'package:hauseful_flutter/theme/theme.dart';
import 'package:hauseful_flutter/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hauseful Flutter',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      // darkTheme: darkTheme,
      // themeMode: ThemeMode.system,
      home: const LoginScreen(),
    );
  }
}
