
import 'package:flutter/material.dart';
import 'package:petology/views/home_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';



void main() async{


  WidgetsFlutterBinding.ensureInitialized();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ScreenTypeLayout(
        mobile: HomeView(),
        desktop:Builder(

          builder: (context) {
            return HomeView();
          },

        ) ,
        breakpoints: ScreenBreakpoints(desktop:700,tablet: 400,watch: 100),

      ),
    );
  }
}

