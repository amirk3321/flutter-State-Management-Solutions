


abstract class NetworkEvents {}


class LoadTodosEvent extends NetworkEvents {
  final List<dynamic> todos;
  LoadTodosEvent(this.todos);
}

class GetTodosEvent extends NetworkEvents {}