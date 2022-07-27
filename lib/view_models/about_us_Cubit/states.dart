import '../../models/about_model.dart';

abstract class AboutUsState {}

class AboutUsInitialState extends AboutUsState {}
class AboutUsLoadingState extends AboutUsState {}
class AboutUsSuccessState extends AboutUsState {
  final AboutsModel aboutsModel;

  AboutUsSuccessState(this.aboutsModel);
}
class AboutUsErrorState extends AboutUsState {
  final String error;

  AboutUsErrorState(this.error);
}
class ChangeScreenState extends AboutUsState{}

