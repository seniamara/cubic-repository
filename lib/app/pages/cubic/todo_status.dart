abstract class TodoState {}

class InitialTodoState extends TodoState {}

class LoadingTodoState extends TodoState {}

class LoadTodoState extends TodoState {
  final List<String> todos;
  LoadTodoState(this.todos);
}
class ErrorTodoState extends TodoState {
  final String message;
  ErrorTodoState(this.message);
  
}
