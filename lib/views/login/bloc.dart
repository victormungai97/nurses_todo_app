// lib/views/login/bloc.dart

part of 'login.dart';

/// Form BLoC for management of signup form.
/// Extends [FormBloc] which uses [String] as type for
/// success (when form submits) and failed (when form doesn't submit) responses

class LoginFormBloc extends FormBloc<String, String> {
  // final showSuccessResponse = BooleanFieldBloc();

  /// Constructor for [LoginFormBloc].
  /// Add all field blocs here
  LoginFormBloc() {
    addFieldBlocs(
      fieldBlocs: [
        email,
        password,
        // showSuccessResponse,
      ],
    );
  }

  /// Field BLoC implementing email input text field
  final email = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
      FieldBlocValidators.email,
    ],
    name: JsonKeys.emailAddress,
  );

  /// Field BLoC implementing password input text field
  final password = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
    name: JsonKeys.password,
  );

  @override
  Future<void> onSubmitting() async {
    debugPrint(email.value);
    debugPrint(password.value);
    // debugPrint(showSuccessResponse.value.toString());

    await Future<void>.delayed(const Duration(seconds: 1));

    emitSuccess();

    // if (showSuccessResponse.value) {
    //   emitSuccess();
    // } else {
    //   emitFailure(failureResponse: 'This is an awesome error!');
    // }
  }
}
