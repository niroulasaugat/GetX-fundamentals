import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/model/getx.dart';
import 'package:getx/model/provider.dart';
import 'package:getx/screens/apipost.dart';
import 'package:getx/screens/favprovider.dart';
import 'package:getx/screens/getxlist.dart';
import 'package:getx/screens/imagescreen.dart';
import 'package:getx/screens/opacityscreen.dart';
import 'package:getx/screens/stateopacityscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:  (context) => OpacityRange(),),
        ChangeNotifierProvider(create: (context)=>FavouriteProvider()),
      ],
       
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: FavProviderScreen()
      ),
    );
}
}

