// Interface para tarefas normais
abstract class NormalTask {
  void markAsDone();
}

// Interface para tarefas prioritárias
abstract class PriorityTask {
  void markAsUrgent();
}

// Classe que representa uma tarefa normal
class SimpleTask implements NormalTask {
  String title;
  bool isDone = false;

  SimpleTask(this.title);

  @override
  void markAsDone() {
    isDone = true;
    print('$title concluída!');
  }
}

// Classe que representa uma tarefa prioritária
class UrgentTask implements NormalTask, PriorityTask {
  String title;
  bool isDone = false;
  bool isUrgent = false;

  UrgentTask(this.title);

  @override
  void markAsDone() {
    isDone = true;
    print('$title concluída!');
  }

  @override
  void markAsUrgent() {
    isUrgent = true;
    print('$title marcada como urgente!');
  }
}

void main() {
  final normalTask = SimpleTask('Limpar o quarto');
  normalTask.markAsDone();

  final urgentTask = UrgentTask('Enviar relatório');
  urgentTask.markAsDone();
  urgentTask.markAsUrgent();
}
