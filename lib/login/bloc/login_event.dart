part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class SigininEvent extends LoginEvent {
  SigininEvent({required this.email, required this.passwrod});
  String email;
  String passwrod;
}
