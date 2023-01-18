import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../helpers/strings.dart';

class WimHofView extends ConsumerWidget {
  const WimHofView({super.key});

  static const routeName = 'wim_hof';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(wimHofLabel),
      ),
    );
  }
}
