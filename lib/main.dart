import 'package:flutter/material.dart';
import 'package:thread_clone/providers/bottom_navbar_provider.dart';
import 'package:thread_clone/providers/thread_post_provder.dart';
import 'package:thread_clone/screens/dashboard_screen.dart';
import 'package:provider/provider.dart';

import 'providers/activity_filter_provider.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// MultiProvider
    return  MultiProvider(
      providers: [
        //here we are initalizing the list of provider with class name
        /// NavBarProvider is for Navbar
        ChangeNotifierProvider(create: (_) => NavBarProvider()),
        ChangeNotifierProvider(create: (_) => ActivityFilterProvider()),
        ChangeNotifierProvider(create: (_) => PostProvider()),


      ],
      child:   MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.black,
          primaryColorLight: Colors.grey.shade200

        ),
        darkTheme: ThemeData(
            scaffoldBackgroundColor: const Color(0xff101010),
            primaryColor: Colors.white,
            primaryColorLight: Colors.grey.shade800
        ),
        home:  DashBoardScreen(),
      )
    );



  }
}
