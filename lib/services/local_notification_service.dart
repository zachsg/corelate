import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tzData;

class LocalNotificationService {
  final _localNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> setup() async {
    const androidSetting = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSetting = DarwinInitializationSettings();

    const initSettings =
        InitializationSettings(android: androidSetting, iOS: iosSetting);

    await _localNotificationsPlugin.initialize(initSettings).then((_) {
      debugPrint('setupPlugin: setup success');
    }).catchError((Object error) {
      debugPrint('Error: $error');
    });
  }

  void addNotification(
    String title,
    String body,
    int endTime, {
    String sound = '',
    String channel = 'default',
  }) async {
    tzData.initializeTimeZones();

    final scheduleTime =
        tz.TZDateTime.fromMillisecondsSinceEpoch(tz.local, endTime);

    final iosDetail = sound == ''
        ? null
        : DarwinNotificationDetails(presentSound: true, sound: sound);

    final soundFile = sound.replaceAll('.mp3', '');
    final notificationSound =
        sound == '' ? null : RawResourceAndroidNotificationSound(soundFile);

    final androidDetail = AndroidNotificationDetails(
        channel, // channel Id
        channel, // channel Name
        playSound: true,
        sound: notificationSound);

    final noticeDetail = NotificationDetails(
      iOS: iosDetail,
      android: androidDetail,
    );

    const id = 0;

    await _localNotificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      scheduleTime,
      noticeDetail,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }

  void cancelNotificationWithId(int id) {
    _localNotificationsPlugin.cancel(id);
  }

  void cancelAllNotifications() {
    _localNotificationsPlugin.cancelAll();
  }
}
