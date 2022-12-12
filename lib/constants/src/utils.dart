// lib/constants/src/utils.dart

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

/// Class of miscellaneous functions
class Utilities {
  /// Method to convert a ``[DateTime]`` from ``[Timestamp]``
  static DateTime? dateTimeFromTimestamp(dynamic val) {
    late Timestamp? timestamp;
    if (val is Timestamp) {
      timestamp = val;
    } else if (val is Map) {
      timestamp = Timestamp(val['_seconds'] as int, val['_nanoseconds'] as int);
    }
    if (timestamp != null) {
      return timestamp.toDate();
    } else {
      log('Unable to parse Timestamp from $val');
      return null;
    }
  }

  /// Method to convert a ``[DateTime]`` to ``[Timestamp]``
  static Map<String, int> dateTimeToTimestamp(DateTime? dateTime) {
    final timestamp = Timestamp.fromDate(dateTime ?? DateTime.now());
    return {
      '_seconds': timestamp.seconds,
      '_nanoseconds': timestamp.nanoseconds,
    };
  }
}
