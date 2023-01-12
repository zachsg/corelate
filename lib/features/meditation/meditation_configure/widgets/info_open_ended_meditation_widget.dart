import 'package:flutter/material.dart';

class InfoOpenEndedMeditationWidget extends StatelessWidget {
  const InfoOpenEndedMeditationWidget({
    super.key,
  });

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
              'Meditate for as long as you\'d like. Tap on "Begin" to start. Once the session is underway, tap on "End Session" to mark your meditation as complete.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}
