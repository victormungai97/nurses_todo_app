// lib/widgets/title.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/cubits/cubits.dart';
import 'package:nurses_todo_app/navigation/navigation.dart';

/// Generic App Bar for use through out application
class AppTitle extends AppBar {
  /// Constructor for ``[AppTitle]``
  AppTitle(
    BuildContext context, {
    super.key,
    List<Widget>? actions,
    bool? implyLeading,
  }) : super(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              Labels.title,
              style: GoogleFonts.cormorantUnicase(fontSize: 32),
            ),
          ),
          actions: [
            ...actions ?? [],
            if (context.read<AuthCubit>().state is Authenticated)
              IconButton(
                onPressed: context.read<AuthCubit>().logout,
                icon: const Icon(Icons.logout_rounded),
              ),
          ],
          backgroundColor: Colors.black,
          elevation: 0,
          automaticallyImplyLeading: implyLeading ?? true,
        );
}
