// lib/views/login/body.dart

part of 'login.dart';

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    final loginFormBloc = context.read<LoginFormBloc>();
    final rolesCubit = context.watch<RolesCubit>();
    final authCubit = context.read<AuthCubit>();

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

          context.read<LoginBloc>().add(
                LoginEvent.userSignedIn(
                  email: loginFormBloc.email.value,
                  password: loginFormBloc.password.value,
                  role: rolesCubit.state,
                ),
              );
        },
        onFailure: (context, state) {
          LoadingDialog.hide(context);

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.failureResponse!)),
          );
        },
        child: BlocConsumer<LoginBloc, LoginState>(
          builder: (context, state) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FlutterLogo(size: 120),
                  const SizedBox(height: 20),
                  if (state is LoginFailure)
                    ErrorTextWidget(exception: state.exception),
                  const SizedBox(height: 20),
                  Theme(
                    data: ThemeData(primaryColor: Colors.black),
                    child: TextFieldBlocBuilder(
                      textFieldBloc: loginFormBloc.email,
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: const [
                        AutofillHints.username,
                      ],
                      decoration: const InputDecoration(
                        labelText: Labels.email,
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          color: AppColors.kPrimaryColor,
                          fontSize: 16,
                        ),
                        focusColor: AppColors.kPrimaryColor,
                      ),
                      textStyle: const TextStyle(
                        color: AppColors.kPrimaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  BlocListener<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is Authenticated) {
                        final role = state.role;
                        if (role == Role.admin || role == Role.nurse) {
                          context.replace(
                            role == Role.nurse ? Routes.shifts : Routes.root,
                          );
                        }
                      }
                    },
                    child: Theme(
                      data: ThemeData(primaryColor: Colors.black),
                      child: TextFieldBlocBuilder(
                        textFieldBloc: loginFormBloc.password,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: Labels.password,
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(
                            color: AppColors.kPrimaryColor,
                            fontSize: 16,
                          ),
                          focusColor: AppColors.kPrimaryColor,
                        ),
                        textStyle: const TextStyle(
                          color: AppColors.kPrimaryColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  if (state is LoginLoading)
                    const Center(child: CircularProgressIndicator())
                  else ...[
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
                      onPressed: () {
                        rolesCubit.updateRole(Role.nurse);
                        loginFormBloc.submit();
                      },
                      icon: const Icon(Icons.health_and_safety),
                    ),
                    if (kDebugMode) ...[
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
                        child: Text(Labels.adminLogin),
                      ),
                      onPressed: () {
                        rolesCubit.updateRole(Role.admin);
                        loginFormBloc.submit();
                      },
                      icon: const Icon(Icons.add_moderator),
                    ),
            ],
                  ],
                ],
              ),
            );
          },
          listener: (context, state) {
            state.whenOrNull(
              failure: (error) => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    error,
                    style: const TextStyle(
                      color: AppColors.errorColor,
                    ),
                  ),
                ),
              ),
              success: () => authCubit.authenticate(
                loginFormBloc.email.value,
                rolesCubit.state,
              ),
            );
          },
        ),
      ),
    );
  }
}
