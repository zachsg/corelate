import 'package:flutter/material.dart';

import 'grab_handle_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    List<Widget> allChildren = [
      const GrabHandleWidget(),
      const SizedBox(height: 16),
    ];

    allChildren.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
    allChildren.add(const SizedBox(height: 20));
    allChildren.addAll(children);
    allChildren.add(const SizedBox(height: 48));

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: allChildren,
      ),
    );
  }
}
