import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:todo/layout/home_layout.dart';
import 'package:todo/shared/bloc_observer/bloc_observer.dart';

void main() {
  // use bloc observer for debug the app
  BlocOverrides.runZoned(
    () {
      runApp(
        MyApp(),
      );
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
