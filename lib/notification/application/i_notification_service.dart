import 'package:meu_versiculo_diario/notification/domain/custom_notification.dart';

abstract class INotificationService {
  Future<void> verificaPermissaoParaNotificacoes();
  Future<void> showNotification(CustomNotification customNotification);
  Future<void> showScheduledNotification(CustomNotification customNotification);
}
