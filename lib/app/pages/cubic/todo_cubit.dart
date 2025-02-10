import 'package:bloc/bloc.dart';
import 'package:cubic/app/pages/cubic/todo_status.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(InitialTodoState());

  final List<String> _items = [];
  List<String> get items => List.unmodifiable(_items); // Lista imutável

  void add(String item) {
    if (item.isEmpty) {
      error("O item não pode estar vazio.");
      return;
    }
    _items.add(item);
    emit(LoadTodoState(List<String>.from(_items)));
  }

  void remove(int index) {
    if (index < 0 || index >= _items.length) {
      error("Índice inválido.");
      return;
    }
    _items.removeAt(index);
    emit(LoadTodoState(List<String>.from(_items)));
  }

  void error(String message) {
    emit(ErrorTodoState(message));
  }

  void loading() {
    emit( LoadingTodoState());
  }
}
