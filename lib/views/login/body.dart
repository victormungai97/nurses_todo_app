// lib/views/login/body.dart

part of 'login.dart';

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    final loginFormBloc = context.read<LoginFormBloc>();
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      margin: const EdgeInsets.all(8),
      child: FormBlocListener<LoginFormBloc, String, String>(
        onSubmitting: (context, state) {
          LoadingDialog.show(context);
        },
        onSubmissionFailed: (context, state) {
          LoadingDialog.hide(context);
        },
        onSuccess: (context, state) {
          LoadingDialog.hide(context);

          debugPrint('-- onSuccess --\n${state.successResponse}');

          context.read<LoginBloc>();
        },
        onFailure: (context, state) {
          LoadingDialog.hide(context);

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.failureResponse!)),
          );
        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(size: 120),
              const SizedBox(height: 20),
              /*if (!isStringEmpty(_errorMessage))
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery
                    .of(context)
                    .size
                    .width - 20,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                padding: const EdgeInsets.all(10),
                child: const Center(
                  child: Text(
                    '_errorMessage',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),*/
              const SizedBox(height: 20),
              Theme(
                data: ThemeData(primaryColor: Colors.black),
                child: TextFieldBlocBuilder(
                  textFieldBloc: loginFormBloc.email,
                  keyboardType: TextInputType.emailAddress,
                  autofillHints: const [
                    AutofillHints.username,
                  ],
                  decoration: InputDecoration(
                    labelText: Labels.email,
                    prefixIcon: const Icon(Icons.email),
                    border: const OutlineInputBorder(),
                    labelStyle: TextStyle(
                      color: AppColors.kPrimaryColor.shade50,
                      fontSize: 16,
                    ),
                    focusColor: AppColors.kPrimaryColor.shade50,
                  ),
                  textStyle: TextStyle(
                      color: AppColors.kPrimaryColor.shade50, fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              Theme(
                data: ThemeData(primaryColor: Colors.black),
                child: TextFieldBlocBuilder(
                  textFieldBloc: loginFormBloc.password,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: Labels.password,
                    prefixIcon: const Icon(Icons.lock),
                    border: const OutlineInputBorder(),
                    labelStyle: TextStyle(
                      color: AppColors.kPrimaryColor.shade300,
                      fontSize: 16,
                    ),
                    focusColor: AppColors.kPrimaryColor.shade300,
                  ),
                  textStyle: TextStyle(
                    color: AppColors.kPrimaryColor.shade300,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  disabledForegroundColor: Colors.grey,
                  shape: const StadiumBorder(),
                  textStyle: GoogleFonts.berkshireSwash(fontSize: 24),
                ),
                label: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(Labels.nurseLogin),
                ),
                icon: const Icon(Icons.health_and_safety),
                onPressed: loginFormBloc.submit,
              ),
              /*const SizedBox(height: 20),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  disabledForegroundColor: Colors.grey,
                  shape: const StadiumBorder(),
                  textStyle: GoogleFonts.berkshireSwash(fontSize: 24),
                ),
                label: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(Labels.adminLogin),
                ),
                icon: const Icon(Icons.add_moderator),
                onPressed: loginFormBloc.submit,
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
