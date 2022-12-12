// lib/controllers/shifts.dart

part of 'controllers.dart';

/// Handle shift operations

class ShiftsController {
  /// Constructor for ``[ShiftsController]``
  const ShiftsController({
    required this.dataService
  });

  /// Obtain recorded shifts
  Future<dynamic> getShifts() async {
    try {
      return await dataService.retrieve(FirebaseFirestore.instance.collection(CollectionIDs.shifts),).then((value) {
        return value?.map((e) => ShiftsModel.fromJson(e.data() as Map<String, Object?>)).toList();
      });
    } catch (error, stackTrace) {
      log(
        'Something went wrong obtaining shifts\n$error',
        error: error,
        stackTrace: stackTrace,
        level: Level.SEVERE.value,
        time: DateTime.now(),
      );
      return Messages.unspecifiedError;
    }
  }

  /// Retrieve shifts that are ongoing or upcoming
  Future<dynamic> getActiveShifts() async {
    final result = await getShifts();
    if (result is String) return result;
    if (result == null) return Messages.noShifts;
    if (result is! List<ShiftsModel>?) return Messages.weirdResponse;
    final shifts = result ?? [];
    if (shifts.isEmpty) return Messages.noShifts;
    return shifts.where((e) => (e.finish ?? DateTime.now()).isAfter(DateTime.now())).toList();
  }

  /// Retrieve shifts that are completed
  Future<dynamic> getCompletedShifts() async {
    final result = await getShifts();
    if (result is String) return result;
    if (result == null) return Messages.noShifts;
    if (result is! List<ShiftsModel>?) return Messages.weirdResponse;
    final shifts = result ?? [];
    if (shifts.isEmpty) return Messages.noShifts;
    return shifts.where((e) => (e.finish ?? DateTime.now()).isBefore(DateTime.now())).toList();
  }

  /// Service for using Cloud Firestore
  final DataInterface dataService;

}