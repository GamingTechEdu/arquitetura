// // Abstração para serviços de notificação
// abstract class NotificationService {
//   void sendNotification(String message);
// }
//
// // Abstração para diferentes tipos de notificações
// abstract class Notification {
//   void send();
// }
//
// // Implementação concreta de notificação por email
// class EmailNotification implements Notification {
//   final NotificationService service;
//
//   EmailNotification(this.service);
//
//   @override
//   void send() {
//     service.sendNotification("Enviando notificação por email...");
//   }
// }
//
// // Implementação concreta de notificação por SMS
// class SmsNotification implements Notification {
//   final NotificationService service;
//
//   SmsNotification(this.service);
//
//   @override
//   void send() {
//     service.sendNotification("Enviando notificação por SMS...");
//   }
// }
//
//
// class HighLevelModule {
//   final Notification notification;
//
//   HighLevelModule(this.notification);
//
//   void doSomething() {
//     // Realizar ação...
//
//     // Enviar notificação utilizando a abstração
//     notification.send();
//
//     // Continuar ação...
//   }
// }
//
// class EmailNotificationService implements NotificationService {
//   @override
//   void sendNotification(String message) {
//     // Lógica de envio de email...
//     print("Email: $message");
//   }
// }
//
// class SmsNotificationService implements NotificationService {
//   @override
//   void sendNotification(String message) {
//     // Lógica de envio de SMS...
//     print("SMS: $message");
//   }
// }
//
// void main() {
//   // Instanciar os serviços concretos
//   final emailService = EmailNotificationService();
//   final smsService = SmsNotificationService();
//
//   // Instanciar os módulos de alto nível com as dependências corretas
//   final highLevelModuleWithEmail = HighLevelModule(EmailNotification(emailService));
//   final highLevelModuleWithSms = HighLevelModule(SmsNotification(smsService));
//
//   // Executar ações nos módulos de alto nível
//   highLevelModuleWithEmail.doSomething();
//   highLevelModuleWithSms.doSomething();
// }

abstract class IPagamentoRepository{
  void save();
}

class PagamentoRepositoryImp implements IPagamentoRepository{
  @override
  void save() => print('implementação');
}

class PagamentoRepositoryMock implements IPagamentoRepository{
  @override
  void save() => print('mock');
}

class ContaCorrente2{
  IPagamentoRepository? _repository;
  ContaCorrente2(IPagamentoRepository repository){
    _repository = repository;
  }

  void executarAlgumaCoisa(){
    _repository!.save();
  }
}

main(List<String> args){
  ContaCorrente2 c = ContaCorrente2(PagamentoRepositoryImp());
  c.executarAlgumaCoisa();

  c = ContaCorrente2(PagamentoRepositoryMock());
  c.executarAlgumaCoisa();

}