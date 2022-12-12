// lib/widgets/errors.dart

import 'package:flutter/material.dart';

/// Widget to display error messages

class ErrorTextWidget extends StatelessWidget {
  /// Constructor for ``[ErrorTextWidget]``
  const ErrorTextWidget({super.key, required this.exception});

  /// Error message to be shown
  final String exception;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width - 20,
      height: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Text(
          exception,
          style: const TextStyle(fontSize: 16, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
