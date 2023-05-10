import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActivityCardWidget extends ConsumerStatefulWidget {
  const ActivityCardWidget({
    super.key,
    required this.isEven,
    required this.isFirstRow,
    required this.onTap,
    required this.child,
  });

  final bool isEven;
  final bool isFirstRow;
  final VoidCallback onTap;
  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActivityCardWidgetState();
}

class _ActivityCardWidgetState extends ConsumerState<ActivityCardWidget> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => setState(() => isTapped = true),
      onTapUp: (details) => setState(() => isTapped = false),
      onTapCancel: () => setState(() => isTapped = false),
      onTap: widget.onTap,
      child: widget.child,
    );
  }
}
