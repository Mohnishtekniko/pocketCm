part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signInApi(
      {BuildContext? context,String? userName, String? passWord, String? url}) = SignInApi;
}
