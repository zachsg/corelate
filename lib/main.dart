import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'corelate_app.dart';
import 'services/local_notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await LocalNotificationService().setup();

  runApp(
    ProviderScope(
      child: CorelateApp(),
    ),
  );
}
