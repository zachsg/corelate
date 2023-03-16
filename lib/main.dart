import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'corelate_app.dart';
import 'services/local_notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Client client = Client();
  // client
  //     .setEndpoint('https://cloud.appwrite.io/v1')
  //     .setProject('6411ed4194621cc84705')
  //     .setSelfSigned(status: true);

  // Account account = Account(client);
  // final user = await account.create(
  //     userId: ID.unique(),
  //     email: 'zsgott@getrecharge.app',
  //     password: 'getrecharge2023PW',
  //     name: 'Zach Gottlieb');

  await LocalNotificationService().setup();

  runApp(
    ProviderScope(
      child: CorelateApp(),
    ),
  );
}
