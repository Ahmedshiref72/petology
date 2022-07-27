import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../reposoteries/constants/constants.dart';
import '../../views/about_us.dart';
import '../../views/adaption.dart';
import '../../views/adaption_search_view.dart';
import '../../views/login.dart';
import '../../views/request.dart';
import '../../views/services_view.dart';
import '../../views/sign_up.dart';
import 'HomeViewModelState.dart';

class HomeViewModelCubit extends Cubit<HomeViewModelState> {
  HomeViewModelCubit() : super(HomeViewModelInitial());

  static HomeViewModelCubit get(context) => BlocProvider.of(context);

  var isHover = [false, false, false, false, false, false];

  List<Widget> screens = [
    AboutUSView(),
    AdaptionScreen(),
    GetAdaptionScreen(),
    RequestView(),
    SignUpView(),
    LoginView(),
  ];


  void changeScreen(int currentIndex)
  {

    index=currentIndex;

    emit(HomeViewModelChangeScreenState());
  }


}
