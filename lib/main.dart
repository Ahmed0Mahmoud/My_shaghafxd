import 'package:flutter/material.dart';
import 'package:shaghaf/core/utils/appRouter.dart';

main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'comfortaa'
      ),
      routerConfig: Approuter.router,
    );
  }
}
