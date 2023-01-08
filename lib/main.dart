import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'corelate_app.dart';

void main() {
  runApp(
    ProviderScope(
      child: CorelateApp(),
    ),
  );
}
