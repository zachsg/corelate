import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../helpers/strings.dart';

class Four78View extends ConsumerWidget {
  const Four78View({super.key});

  static const routeName = 'four_7_8';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(four78Label),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Coming soon...'),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: context.pop,
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
