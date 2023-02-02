import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../today_c.dart';

class ActionButtonWidget extends ConsumerWidget {
  const ActionButtonWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedContainer(
      width: MediaQuery.of(context).size.width,
      height: ref.watch(todayCProvider).fabExpanded ? 60 : 0,
      duration: const Duration(milliseconds: 200),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          children: [
            const Spacer(),
            Text(title),
            const SizedBox(width: 12),
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Icon(icon, size: 28),
            ),
          ],
        ),
      ),
    );
  }
}
