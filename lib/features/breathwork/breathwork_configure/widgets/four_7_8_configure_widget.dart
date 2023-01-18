import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../helpers/strings.dart';
import 'rounds_dropdown_button_widget.dart';

class Four78ConfigureWidget extends ConsumerWidget {
  const Four78ConfigureWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                roundsLabel,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const RoundsDropdownButtonWidget(),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 32.0),
          child: Divider(),
        ),
      ],
    );
  }
}
