import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../helpers/strings.dart';

class BreathworkConfigureView extends ConsumerWidget {
  const BreathworkConfigureView({super.key});

  static const routeName = 'breathwork_configure';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(breathworkTitle),
      ),
    );
  }
}
