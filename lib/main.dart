import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/reposoteries/constants/constants.dart';
import 'package:petology/reposoteries/network/local/cache_helper.dart';
import 'package:petology/reposoteries/network/remote/dio_helper.dart';
import 'package:petology/view_models/home_view_model_cubit/home_view_model.dart';
import 'package:petology/view_models/login_view_model_cubit/login_cubit.dart';
import 'package:petology/view_models/register_view_model_cubit/cubit.dart';
import 'package:petology/view_models/request_view_model/request_view_model_cubit.dart';
import 'package:petology/view_models/services_view_model/services_view_model_cubit.dart';
import 'package:petology/views/home_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();



  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>HomeViewModelCubit()..changeScreen(index)),
        BlocProvider(create: (context)=>LoginCubit()),
        BlocProvider(create: (context)=>RegisterCubit()..changeScreen(index)),
        BlocProvider(create: (context)=>RequestViewModelCubit()),
        BlocProvider(create: (context)=>ServicesViewModelCubit()),



      ],
      child: MaterialApp(
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
      ),
    );
  }
}

