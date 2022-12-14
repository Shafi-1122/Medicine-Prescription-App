import 'package:flutter/material.dart';
import 'package:loginscreen/view_model/provider.dart';
import 'package:loginscreen/view/Splashscreen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'Splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProvidersClass(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Splashscreen(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

