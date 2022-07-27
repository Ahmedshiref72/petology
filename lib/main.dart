import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/reposoteries/bloc_observer.dart';
import 'package:petology/reposoteries/network/local/cache_helper.dart';
import 'package:petology/reposoteries/network/remote/dio_helper.dart';
import 'package:petology/view_models/about_us_Cubit/about_us_cubit.dart';
import 'package:petology/view_models/adaption_cubit/adaption_cubit.dart';
import 'package:petology/view_models/home_view_model_cubit/home_view_model.dart';
import 'package:petology/view_models/login_view_model_cubit/login_cubit.dart';
import 'package:petology/view_models/register_view_model_cubit/cubit.dart';
import 'package:petology/view_models/request_cubit/request_cubit.dart';
import 'package:petology/view_models/services_view_model/services_view_model_cubit.dart';
import 'package:petology/views/home_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() async{

  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    if (kReleaseMode) exit(1);
  };
  WidgetsFlutterBinding.ensureInitialized();
/*  if(Platform.isWindows)
    await DesktopWindow.setMinWindowSize(Size(1300.0,1200.0));*/
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();

  //token = await CacheHelper.getData(key: 'accessToken');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                LoginCubit()
        ),
        BlocProvider(
            create: (context) =>
                RegisterCubit()
        ),
        BlocProvider(
            create: (context) =>
            HomeCubit()..getFooterData()
        ),
        BlocProvider(
            create: (context) =>
                RequestCubit()
        ),
        BlocProvider(
            create: (context) =>
            AdaptionCubit()..getListData()
        ),
        BlocProvider(
            create: (context) =>
            AboutUsCubit()..getAboutData()
        ),
        BlocProvider(
            create: (context) =>
                ServicesCubit()
        ),
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
          breakpoints: const ScreenBreakpoints(desktop:1000,tablet: 400,watch: 100),

        ),
      ),
    );
  }
}
