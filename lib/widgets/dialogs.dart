// lib/widgets/dialogs.dart

import 'package:flutter/material.dart';
import 'package:nurses_todo_app/extensions/extensions.dart';

/// Dialog for Widget of a loading spinner

class LoadingDialog extends StatelessWidget {
  /// Constructor for ``[LoadingDialog]``
  const LoadingDialog({super.key});

  /// Display dialog
  static void show(BuildContext context, {Key? key}) => showDialog<void>(
        context: context,
        useRootNavigator: false,
        barrierDismissible: false,
        builder: (_) => LoadingDialog(key: key),
      ).then((_) => FocusScope.of(context).requestFocus(FocusNode()));

  /// Remove dialog
  static void hide(BuildContext context) => Navigator.pop(context);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Center(
        child: Card(
          child: Container(
            width: 80,
            height: 80,
            padding: const EdgeInsets.all(12),
            child: const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

/// Function to display a modal bottom sheet with custom widget as body
Future<dynamic> showCustomModalBottomSheet(BuildContext context, {String? title, Widget? content, dynamic Function(dynamic)? onClose, List<Widget> actions = const [],}) async {
  return showModalBottomSheet<dynamic>(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
      topLeft: Radius.circular(16), topRight: Radius.circular(16),),),
    backgroundColor: Theme.of(context).cardColor,
    builder: (context) => SingleChildScrollView(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if ((title ?? '').exists)
            Padding(
              padding:
              const EdgeInsets.only(right: 20, left: 20, top: 24),
              child: Text(title!,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
            content ?? const SizedBox.shrink(),
            if (actions.isNotEmpty == true) Padding(
              padding:
              const EdgeInsets.only(right: 20, left: 20, top: 16, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(actions.length, (index) {
                  final direction = Directionality.of(context);
                  final padding = index != 0 ? 8.0 : 0.0;
                  var rightPadding = 0.0;
                  var leftPadding = 0.0;
                  direction == TextDirection.rtl
                      ? rightPadding = padding
                      : leftPadding = padding;
                  return Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: leftPadding, right: rightPadding,),
                      child: actions[index],
                    ),
                  );
                },),
              ),
            ) else const SizedBox(
              height: 20
            ),
          ],
        ),
      ),
    ),
  ).then((value) => onClose?.call(value));
}
