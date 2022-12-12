// lib/views/shifts/body.dart

part of 'shifts.dart';

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ShiftsBloc>();

    return bloc.state.when(
        initial: () {
          return Center(
            child: InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.replay, size: 52), SizedBox(height: 12.5), Text(Labels.shiftsPrompt, style: TextStyle(fontSize: 32), textAlign: TextAlign.center,), SizedBox(height: 12.5),
                   ],
              ),
              onTap: () => bloc.add(context.read<ShiftsCubit>().state ? const ShiftsEvent.activeRetrieved(): const ShiftsEvent.completedRetrieved(),),
            ),
          );
        },
        load: () => const Center(child: CircularProgressIndicator()),
        obtainSuccess: (shifts) => shifts != null && shifts.isNotEmpty ? ListView.separated(
          separatorBuilder: (_, i) => const SizedBox(height: 25),
          itemBuilder: (_, i) => i == 0 ? const Center(child: ToggleShiftWidget(),) : ShiftEntry(shiftModel: shifts[i - 1]),
          itemCount: shifts.length + 1,
          padding: const EdgeInsets.symmetric(vertical: 15),
        ) : const _Error(exception: Messages.noShifts),
        failure: (exception) => _Error(exception: exception),
    );
  }
}

class _Error extends StatelessWidget {
  const _Error({super.key, required this.exception});

  /// Error Message
  final String exception;

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ErrorTextWidget(exception: exception),
        const SizedBox(height: 25),
        GestureDetector(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.replay_sharp, color: Colors.black),
                SizedBox(width: 12.5),
                Text(Labels.shiftsPrompt, style: TextStyle(fontSize: 24),),
              ],
            ),
          ),
          onTap: () => context.read<ShiftsBloc>().add(context.read<ShiftsCubit>().state ? const ShiftsEvent.activeRetrieved(): const ShiftsEvent.completedRetrieved(),),
        ),
        const SizedBox(height: 8),
      ],
    ),);
  }
}

