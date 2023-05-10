import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/breathwork_model.dart';
import '../../../models/breathwork_type.dart';
import '../../widgets/xwidgets.dart';
import 'activity_card_widget.dart';

class BreathworkCardWidget extends ConsumerWidget {
  const BreathworkCardWidget({
    super.key,
    required this.title,
    required this.breathwork,
    required this.icon,
    required this.timeString,
    required this.isEven,
    required this.isFirstRow,
  });

  final String title;
  final BreathworkModel breathwork;
  final String timeString;
  final Icon icon;
  final bool isEven;
  final bool isFirstRow;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type = breathwork.type == BreathworkType.four78 ? '4-7-8' : 'Wim Hof';
    final rounds = breathwork.rounds;

    return ActivityCardWidget(
        isEven: isEven,
        isFirstRow: isFirstRow,
        onTap: () => showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) =>
                  _breathworkSheet(ref, context, breathwork),
            ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 2,
                    height: 36,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  Column(
                    children: [
                      icon,
                      Text(timeString),
                    ],
                  ),
                  Container(
                    width: 2,
                    height: 36,
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Breathwork',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.style,
                        size: 20,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      const SizedBox(width: 4),
                      Text(type),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.restart_alt,
                        size: 20,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                      const SizedBox(width: 4),
                      Text('$rounds ${rounds == 1 ? 'round' : 'rounds'}'),
                    ],
                  ),
                ],
              ),
              // Positioned(
              //   bottom: 8,
              //   right: 8,
              //   child: Icon(
              //     breathwork.rating?.iconForRating(),
              //     color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
              //     size: 28,
              //   ),
              // ),
            ],
          ),
        )

        // Stack(
        //   children: [
        //     Positioned(
        //       top: 8,
        //       right: 8,
        //       child: icon,
        //     ),
        //     Positioned(
        //       top: 18,
        //       left: 8,
        //       child: Text(
        //         timeString,
        //         style: Theme.of(context).textTheme.bodySmall,
        //       ),
        //     ),
        //     Positioned(
        //       bottom: 8,
        //       left: 8,
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.end,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         mainAxisSize: MainAxisSize.min,
        //         children: [
        //           Text(
        //             title,
        //             style: Theme.of(context).textTheme.titleMedium,
        //           ),
        //           Row(
        //             children: [
        //               Icon(
        //                 Icons.style,
        //                 size: 20,
        //                 color: Theme.of(context).colorScheme.onBackground,
        //               ),
        //               const SizedBox(width: 4),
        //               Text(type),
        //             ],
        //           ),
        //           Row(
        //             children: [
        //               Icon(
        //                 Icons.restart_alt,
        //                 size: 20,
        //                 color: Theme.of(context).colorScheme.onPrimaryContainer,
        //               ),
        //               const SizedBox(width: 4),
        //               Text('$rounds ${rounds == 1 ? 'round' : 'rounds'}'),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //     Positioned(
        //       bottom: 8,
        //       right: 8,
        //       child: Icon(
        //         breathwork.rating?.iconForRating(),
        //         color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
        //         size: 28,
        //       ),
        //     ),
        //   ],
        // ),
        );
  }

  Widget _breathworkSheet(
      WidgetRef ref, BuildContext context, BreathworkModel breathwork) {
    var title = 'Breathwork';
    var message = '';

    final rounds = breathwork.rounds;
    if (breathwork.type == BreathworkType.four78) {
      title += ' (4-7-8)';
      message = 'You did $rounds ${rounds == 1 ? 'round' : 'rounds'} of the'
          ' 4-7-8 breathing technique.';
    } else {
      title += ' (Wim Hof)';
      final breathsPerRound = breathwork.breathsPerRound;
      message =
          'You did $rounds ${rounds == 1 ? 'round' : 'rounds'} of the Wim Hof Method'
          ' ($breathsPerRound breaths per round).\n\nIndividual breath holds:\n';
    }

    return BottomSheetWidget(
      title: title,
      children: [
        Text(
          message,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        if (breathwork.type == BreathworkType.wimHof)
          SizedBox(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: WimHofBarChartWidget(breathwork: breathwork),
          ),
      ],
    );
  }
}
