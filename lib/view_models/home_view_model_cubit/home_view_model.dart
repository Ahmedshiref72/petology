import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../components/constants.dart';
import '../../models/footer_model.dart';
import '../../reposoteries/constants/end_point.dart';
import '../../reposoteries/network/remote/dio_helper.dart';
import '../../views/about_us.dart';
import '../../views/adaption.dart';
import '../../views/adaption_search_view.dart';
import '../../views/login.dart';
import '../../views/request_view.dart';
import '../../views/servicesAdaption.dart';
import '../../views/services_view.dart';
import '../../views/sign_up.dart';
import 'HomeViewModelState.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeViewModelInitial());


  static HomeCubit get(context) => BlocProvider.of(context);


  var isHover = [false, false, false, false, false, false];

  List<Widget> screens = [
    AboutUSView(),
    AdaptionScreen(),
    ServicesView(),
    RequestView(),
    SignUpView(),
    LoginView(),
    AdaptionSearchView(),
    ServicesAdaptionView()
  ];


  late FooterModel footerModel;


  Future getFooterData() async{
    emit(HomeFooterLoadingState());

    await DioHelper.getData(
      url: FOOTER,
      token: token,

    ).then((value) {
      footerModel = FooterModel.fromJson(value.data);
      printFullText(footerModel.location.toString());

      emit(HomeFooterSuccessState(footerModel));
    }).catchError((error) {
      print(error.toString());
      emit(HomeFooterErrorState(error.toString()));
    });
  }



  void changeScreen(int currentIndex)
  {

    index=currentIndex;

    emit(HomeViewModelChangeScreenState());
  }



}