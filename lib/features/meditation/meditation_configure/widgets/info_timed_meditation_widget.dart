import 'package:flutter/material.dart';

import '../../../../models/meditation.dart';

class InfoTimedMeditationWidget extends StatelessWidget {
  const InfoTimedMeditationWidget({
    super.key,
    required this.meditation,
  });

  final Meditation meditation;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Icon(
            Icons.info,
            size: 32,
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              'Meditate for ${meditation.goal ?? 10 ~/ 60} minutes. Tap on "Begin" to start. Once the session is underway, tap on "End Early" if you\'d like to cut your session short; otherwise just meditate until the session ends of its own volition.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}
