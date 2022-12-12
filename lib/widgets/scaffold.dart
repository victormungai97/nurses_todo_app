// lib/widgets/scaffold.dart

import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:nurses_todo_app/blocs/blocs.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/controllers/controllers.dart';
import 'package:nurses_todo_app/cubits/cubits.dart';
import 'package:nurses_todo_app/extensions/extensions.dart';
import 'package:nurses_todo_app/keys/keys.dart';
import 'package:nurses_todo_app/models/models.dart';
import 'package:nurses_todo_app/navigation/navigation.dart';
import 'package:nurses_todo_app/plugins/plugins.dart';
import 'package:nurses_todo_app/widgets/widgets.dart';

class _CreateTaskFormBloc extends FormBloc<String, String> {
  _CreateTaskFormBloc(this._context) : super(isLoading: true) {
    addFieldBlocs(fieldBlocs: [message, shifts]);
  }

  final message = TextFieldBloc(
    validators: [FieldBlocValidators.required],
    name: JsonKeys.message,
  );

  final shifts = SelectFieldBloc<String, dynamic>(
    validators: [FieldBlocValidators.required],
    name: JsonKeys.shift,
  );

  @override
  Future<void> onLoading() async {
    try {
      final result = await _context.read<ShiftsController>().getActiveShifts();

      if (result is String) throw Exception(result);
      if (result is! List<ShiftsModel>?) {
        throw Exception(Messages.weirdResponse);
      }

      final res = result ?? [];

      shifts.updateItems(
        res
            .map(
              (e) => DateFormat("MMMM d, yyyy 'at' h:m:ss a").format(
                e.begin ?? DateTime.now(),
              ),
            )
            .toList(),
      );

      emitLoaded();
    } catch (e) {
      emitLoadFailed(failureResponse: Messages.unspecifiedError);
    }
  }

  @override
  Future<void> onSubmitting() async {
    emitSuccess();
  }

  final BuildContext _context;
}

/// Custom ``[Scaffold]`` with functionality for creating a task built in.
/// To be used in logged in pages

class CustomScaffold extends StatelessWidget {
  /// Constructor for ``[CustomScaffold]``
  const CustomScaffold({super.key, this.body, this.actions});

  /// Body for current page
  final Widget? body;

  /// List of widgets to display on ``[AppBar]`` after title
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<_CreateTaskFormBloc>(
      create: _CreateTaskFormBloc.new,
      child: Builder(builder: (context) {
        final formBloc = context.read<_CreateTaskFormBloc>();
        return Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              showCustomModalBottomSheet(
                context,
                title: Labels.createTask,
                content: BlocProvider<_CreateTaskFormBloc>.value(
                  value: formBloc,
                  child: Builder(
                    builder: (context) {
                      final formBloc = context.read<_CreateTaskFormBloc>();
                      return FormBlocListener<_CreateTaskFormBloc, String,
                          String>(
                        onSubmitting: (context, state) {
                          LoadingDialog.show(context);
                        },
                        onSubmissionFailed: (context, state) {
                          LoadingDialog.hide(context);
                        },
                        onSuccess: (context, state) async {
                          LoadingDialog.hide(context);

                          debugPrint(
                              '-- onSuccess --\n${state.successResponse}');

                          final message = formBloc.message.value;
                          final shift = formBloc.shifts.value;

                          await context
                              .read<TasksController>()
                              .addTask(
                                message: message,
                                shift: shift,
                              )
                              .then((result) {
                            if (result != null) {
                              formBloc.emitFailure(failureResponse: result);
                            } else {
                              Navigator.pop(context);
                              context.push(
                                Uri(
                                  path: Routes.tasks,
                                  queryParameters: {'shift': shift},
                                ).toString(),
                              );
                            }
                          });
                        },
                        onFailure: (context, state) {
                          LoadingDialog.hide(context);

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(state.failureResponse!)),
                          );
                        },
                        child: BlocBuilder<_CreateTaskFormBloc,
                            FormBlocState<String, String>>(
                          buildWhen: (previous, current) =>
                              previous.runtimeType != current.runtimeType ||
                              previous is FormBlocLoading &&
                                  current is FormBlocLoading,
                          builder: (context, state) {
                            if (state is FormBlocLoading) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            }

                            if (state is FormBlocLoadFailed) {
                              return Center(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: <Widget>[
                                      const Icon(Icons.sentiment_dissatisfied,
                                          size: 70),
                                      const SizedBox(height: 20),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        alignment: Alignment.center,
                                        child: const Text(
                                          Messages.unspecifiedError,
                                          style: TextStyle(fontSize: 25),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      ElevatedButton(
                                        onPressed: formBloc.reload,
                                        child: const Text('RETRY'),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }

                            return ListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 16,
                              ),
                              title: Theme(
                                data: ThemeData(primaryColor: Colors.black),
                                child: TextFieldBlocBuilder(
                                  textFieldBloc: formBloc.message,
                                  decoration: const InputDecoration(
                                    labelText: Labels.message,
                                    prefixIcon: Icon(Icons.note_alt_outlined),
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
                              subtitle:
                                  RadioButtonGroupFieldBlocBuilder<String>(
                                selectFieldBloc: formBloc.shifts,
                                itemBuilder: (context, item) => FieldItem(
                                  child: Text(item),
                                ),
                                decoration: const InputDecoration(
                                  labelText: 'Select shift to assign task to',
                                  prefixIcon: SizedBox(),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                actions: [
                  ArgonButton(
                    height: 56,
                    width: 350,
                    color: Colors.green,
                    icon: const Icon(Icons.send),
                    loader: const Padding(
                      padding: EdgeInsets.all(16),
                      child: SpinKitChasingDots(color: Colors.white, size: 24),
                    ),
                    onTap: (btnLoadStart, btnLoadStop, btnState) async {
                      if (btnState == ButtonState.Idle) {
                        btnLoadStart();
                        formBloc.submit();
                        btnLoadStop();
                      }
                    },
                    child: const Text(Labels.submit),
                  ),
                  // const SizedBox(width: 5),
                  ArgonButton(
                    color: Colors.red,
                    height: 56,
                    width: 350,
                    icon: const Icon(Icons.close),
                    onTap: (_, __, ___) async => Navigator.of(context).pop(),
                    child: const Text(Labels.cancel),
                  ),
                ],
              );
            },
            label: const Text(Labels.createTask),
            foregroundColor: AppColors.canvasColor,
            backgroundColor: AppColors.kPrimaryColor,
            icon: const Icon(Icons.add),
          ),
          body: body,
          appBar: AppTitle(context, actions: actions),
          // resizeToAvoidBottomInset: false,
          backgroundColor: Theme.of(context).canvasColor,
        );
      }),
    );
  }
}
