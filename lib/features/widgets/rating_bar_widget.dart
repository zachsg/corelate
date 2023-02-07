import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RatingBarWidget extends ConsumerStatefulWidget {
  const RatingBarWidget({super.key, required this.onRatingChange});

  final Function(double) onRatingChange;

  @override
  ConsumerState<RatingBarWidget> createState() => _RatingBarWidgetState();
}

class _RatingBarWidgetState extends ConsumerState<RatingBarWidget> {
  bool rating1Selected = false;
  bool rating2Selected = false;
  bool rating3Selected = false;
  bool rating4Selected = false;
  bool rating5Selected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              ratingUpdated(0);
              widget.onRatingChange(0);
            },
            icon: Icon(
              Icons.sentiment_very_dissatisfied,
              size: rating1Selected ? 40 : 32,
              color: rating1Selected
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.primary.withOpacity(0.3),
            ),
          ),
          IconButton(
            onPressed: () {
              ratingUpdated(1);
              widget.onRatingChange(1);
            },
            icon: Icon(
              Icons.sentiment_dissatisfied,
              size: rating2Selected ? 40 : 32,
              color: rating2Selected
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.primary.withOpacity(0.3),
            ),
          ),
          IconButton(
            onPressed: () {
              ratingUpdated(2);
              widget.onRatingChange(2);
            },
            icon: Icon(
              Icons.sentiment_neutral,
              size: rating3Selected ? 40 : 32,
              color: rating3Selected
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.primary.withOpacity(0.3),
            ),
          ),
          IconButton(
            onPressed: () {
              ratingUpdated(3);
              widget.onRatingChange(3);
            },
            icon: Icon(
              Icons.sentiment_satisfied,
              size: rating4Selected ? 40 : 32,
              color: rating4Selected
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.primary.withOpacity(0.3),
            ),
          ),
          IconButton(
            onPressed: () {
              ratingUpdated(4);
              widget.onRatingChange(4);
            },
            icon: Icon(
              Icons.sentiment_very_satisfied,
              size: rating5Selected ? 40 : 32,
              color: rating5Selected
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.primary.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }

  void ratingUpdated(double rating) {
    switch (rating.toInt()) {
      case 0:
        setState(() {
          rating1Selected = true;
          rating2Selected = false;
          rating3Selected = false;
          rating4Selected = false;
          rating5Selected = false;
        });
        break;
      case 1:
        setState(() {
          rating1Selected = false;
          rating2Selected = true;
          rating3Selected = false;
          rating4Selected = false;
          rating5Selected = false;
        });
        break;
      case 2:
        setState(() {
          rating1Selected = false;
          rating2Selected = false;
          rating3Selected = true;
          rating4Selected = false;
          rating5Selected = false;
        });
        break;
      case 3:
        setState(() {
          rating1Selected = false;
          rating2Selected = false;
          rating3Selected = false;
          rating4Selected = true;
          rating5Selected = false;
        });
        break;
      case 4:
        setState(() {
          rating1Selected = false;
          rating2Selected = false;
          rating3Selected = false;
          rating4Selected = false;
          rating5Selected = true;
        });
        break;
      default:
        setState(() {
          rating1Selected = false;
          rating2Selected = false;
          rating3Selected = false;
          rating4Selected = false;
          rating5Selected = false;
        });
    }
  }
}
