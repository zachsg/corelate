import 'package:flutter/material.dart';

class GrabHandleWidget extends StatelessWidget {
  const GrabHandleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
