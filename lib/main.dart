import 'package:emobile/screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest req = CookieRequest();
        return req;
      },
      child: MaterialApp(
        title: '2306207101',
        theme: ThemeData(
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
          ).copyWith(secondary: Colors.blue[400]),
          useMaterial3: true,
        ),
        home: LoginPage(),
      ),
    );
  }
}
