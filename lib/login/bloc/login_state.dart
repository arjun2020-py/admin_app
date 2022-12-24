part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginSucessState extends LoginState {}

class LoginFailedState extends LoginState {}
