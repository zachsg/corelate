import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RatingBarWidget extends ConsumerWidget {
  const RatingBarWidget({super.key, required this.onRatingChange});

  final Function(double) onRatingChange;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RatingBar.builder(
      unratedColor: Theme.of(context).colorScheme.onBackground,
      glowColor: Theme.of(context).colorScheme.primary,
      itemPadding: const EdgeInsets.all(4.0),
      initialRating: 0,
      itemCount: 5,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return Icon(
              Icons.sentiment_very_dissatisfied,
              color: Theme.of(context).colorScheme.error,
            );
          case 1:
            return Icon(
              Icons.sentiment_dissatisfied,
              color: Theme.of(context).colorScheme.inversePrimary,
            );
          case 2:
            return Icon(
              Icons.sentiment_neutral,
              color: Theme.of(context).colorScheme.tertiary,
            );
          case 3:
            return Icon(
              Icons.sentiment_satisfied,
              color: Theme.of(context).colorScheme.secondary,
            );
          case 4:
            return Icon(
              Icons.sentiment_very_satisfied,
              color: Theme.of(context).colorScheme.primary,
            );
          default:
            return Icon(
              Icons.sentiment_neutral,
              color: Theme.of(context).colorScheme.tertiary,
            );
        }
      },
      onRatingUpdate: (rating) => onRatingChange(rating),
    );
  }
}
