// lib/views/shifts/components/entry.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/extensions/extensions.dart';
import 'package:nurses_todo_app/models/models.dart';
import 'package:nurses_todo_app/navigation/navigation.dart';
import 'package:nurses_todo_app/widgets/widgets.dart';

/// Widget to render an individual shift

class ShiftEntry extends StatelessWidget {
  /// Constructor for ``[ShiftEntry]``
  const ShiftEntry({super.key, this.shiftModel});

  /// Shift to be displayed
  final ShiftsModel? shiftModel;

  @override
  Widget build(BuildContext context) {
    if (shiftModel == null) {
      return const Center(
        child: ErrorTextWidget(exception: Messages.shiftMissing),
      );
    }

    final onDuty = shiftModel?.workers ?? [];

    final start = shiftModel?.begin ?? DateTime.now();
    final end = shiftModel?.finish ??
        DateTime.now().add(
          const Duration(hours: 8),
        );
    final format = DateFormat('h:mm a');
    final dateFormat = DateFormat('EEEE dd MMM yyyy');
    final duration = '${format.format(start)} - ${format.format(end)}';

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width - 20,
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            '${shiftModel!.label.title} of ${dateFormat.format(start)}',
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 10),
          const Text(
            Labels.dutyNurses,
            style: TextStyle(color: Colors.grey, fontSize: 16),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: onDuty
                  .map(
                    (e) => CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        'https://ui-avatars.com/api/?name=$e&background=random',
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.schedule_outlined,
                    color: Colors.orangeAccent,
                  ),
                  const SizedBox(width: 12.5),
                  Text(duration),
                ],
              ),
            ),
          ),
          InkWell(
            child: const Text(
              Labels.redirectToTasks,
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
            onTap: () => context.push(
              Uri(
                path: Routes.tasks,
                queryParameters: {
                  'shift':
                      DateFormat("MMMM d, yyyy 'at' h:mm:ss a").format(start)
                },
              ).toString(),
            ),
          ),
        ],
      ),
    );
  }
}
