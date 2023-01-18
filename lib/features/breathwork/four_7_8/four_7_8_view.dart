import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    );
  }
}
