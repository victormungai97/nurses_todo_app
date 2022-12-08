// lib/widgets/title.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nurses_todo_app/constants/constants.dart';

/// Generic App Bar for use through out application
class AppTitle extends AppBar {
  /// Constructor for ``[AppTitle]``
  AppTitle({super.key, super.actions, bool? implyLeading})
      : super(
    iconTheme: const IconThemeData(color: Colors.white),
    centerTitle: true,
    title: Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        Labels.title,
        style: GoogleFonts.cormorantUnicase(fontSize: 32),
      ),
    ),
    backgroundColor: Colors.black,
    elevation: 0,
    automaticallyImplyLeading: implyLeading ?? true,
  );
}