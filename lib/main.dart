import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:six_dreams_test/core/router/routers.dart';
import 'package:six_dreams_test/core/theme/dark_theme_extension.dart';

void main() {
  runApp( const ProviderScope(child:  MyApp()));
}

class MyApp extends StatelessWidget {
    static final navigatorKey = GlobalKey<NavigatorState>();

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darktheme,
      routerConfig:router,
    );
  }
}

