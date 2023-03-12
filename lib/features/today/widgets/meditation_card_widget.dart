import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../helpers/extensions.dart';
import '../../../models/meditation.dart';
import '../../../models/meditation_type.dart';
import 'activity_card_widget.dart';

class MeditationCardWidget extends ConsumerWidget {
  const MeditationCardWidget({
    super.key,
    required this.title,
    required this.meditation,
    required this.icon,
    required this.timeString,
    required this.isEven,
    required this.isFirstRow,
  });

  final String title;
  final Meditation meditation;
  final String timeString;
  final Icon icon;
  final bool isEven;
  final bool isFirstRow;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var type = '';
    var durationString = '';

    type = meditation.type == MeditationType.timed
        ? meditation.type.name.capitalize()
        : 'Open-ended';

    final minutes = meditation.elapsed ~/ 60;
    final seconds =
        minutes == 0 ? meditation.elapsed : meditation.elapsed - minutes * 60;
    if (minutes == 0) {
      durationString = '${seconds}s';
    } else if (seconds == 0) {
      durationString = '${minutes}m';
    } else {
      durationString = '${minutes}m ${seconds}s';
    }

    return ActivityCardWidget(
      isEven: isEven,
      isFirstRow: isFirstRow,
      onTap: () => showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) =>
            _meditationSheet(ref, context, meditation),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            right: 8,
            child: icon,
          ),
          Positioned(
            top: 18,
            left: 8,
            child: Text(
              timeString,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
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
                      Icons.timer,
                      size: 20,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                    const SizedBox(width: 4),
                    Text(durationString),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: Icon(
              meditation.rating?.iconForRating(),
              color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget _meditationSheet(
      WidgetRef ref, BuildContext context, Meditation meditation) {
    var title = '';
    var message = '';

    title = 'Meditation';
    final elapsed = meditation.elapsed;

    final minutes = elapsed / 60 > 0 ? elapsed ~/ 60 : 0;
    final seconds = minutes == 0 ? elapsed : elapsed - minutes * 60;

    var durationString = '';
    if (minutes == 0) {
      durationString = '$seconds seconds';
    } else if (seconds == 0) {
      durationString = '$minutes minutes';
    } else {
      durationString = '$minutes minutes and $seconds seconds';
    }

    message = 'You meditated for $durationString.';

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$title Details',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              IconButton(
                onPressed: Navigator.of(context).pop,
                icon: const Icon(Icons.cancel_outlined, size: 32),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            message,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 48),
        ],
      ),
    );
  }
}
