// // ignore_for_file: avoid_print

// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:flutter_native_timezone_updated_gradle/flutter_native_timezone.dart';
// import 'package:meu_versiculo_diario/notification/application/i_notification_service.dart';
// import 'package:meu_versiculo_diario/notification/domain/custom_notification.dart';
// import 'package:timezone/timezone.dart' as tz;
// import 'package:timezone/data/latest_all.dart' as tz;

// class NotificationService implements INotificationService {
//   final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
//   final androidNotificationDetails = const AndroidNotificationDetails(
//     'notifications-id',
//     'Notificacoes',
//     channelDescription: 'Canal para notificacoes',
//     importance: Importance.max,
//     priority: Priority.max,
//     enableVibration: true,
//   );

//   /// Constructor
//   NotificationService() {
//     _setUpNotifications();
//   }

//   Future<void> _setUpNotifications() async {
//     await _setUpTimeZone();
//     await _initializeNotifications();
//   }

//   Future<void> _setUpTimeZone() async {
//     tz.initializeTimeZones();
//     final timezoneName = await FlutterNativeTimezone.getLocalTimezone();
//     final location = tz.getLocation(timezoneName);
//     tz.setLocalLocation(location);
//   }

//   Future<void> _initializeNotifications() async {
//     const androidInitializationSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
//     await flutterLocalNotificationsPlugin.initialize(
//       const InitializationSettings(android: androidInitializationSettings),
//     );
//   }

//   @override
//   Future<void> verificaPermissaoParaNotificacoes() async {
//     final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
//         ?.requestNotificationsPermission();
//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
//         ?.requestExactAlarmsPermission();
//   }

//   @override
//   Future<void> showNotification(CustomNotification customNotification) async {
//     await flutterLocalNotificationsPlugin.show(
//       customNotification.id,
//       customNotification.title,
//       customNotification.body,
//       NotificationDetails(android: androidNotificationDetails),
//       payload: customNotification.payload,
//     );
//   }

//   @override
//   Future<void> showScheduledNotification(CustomNotification customNotification) async {
//     final date = DateTime.now().add(const Duration(seconds: 3));
//     await flutterLocalNotificationsPlugin.zonedSchedule(
//       customNotification.id,
//       customNotification.title,
//       customNotification.body,
//       tz.TZDateTime.from(date, tz.local),
//       NotificationDetails(android: androidNotificationDetails),
//       payload: customNotification.payload,
//       androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
//       uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
//     );
//   }
// }
