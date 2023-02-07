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
    return Padding(
      padding: EdgeInsets.only(
        bottom: widget.isFirstRow ? 8.0 : 8.0,
        left: widget.isEven ? 8.0 : 4.0,
        right: widget.isEven ? 4.0 : 8.0,
      ),
      child: GestureDetector(
        onTapDown: (details) => setState(() => isTapped = true),
        onTapUp: (details) => setState(() => isTapped = false),
        onTapCancel: () => setState(() => isTapped = false),
        onTap: widget.onTap,
        child: Card(
          elevation: isTapped ? 0 : 1,
          child: widget.child,
        ),
      ),
    );
  }
}
