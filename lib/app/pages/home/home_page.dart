import 'package:cubic/app/pages/cubic/todo_cubit.dart';
import 'package:cubic/app/pages/cubic/todo_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubic List To Do'),
      ),
      body: Column(
        children: [
          // Escuta o estado do TodoCubit
          Expanded(
            child: BlocBuilder<TodoCubit, TodoState>(
              builder: (context, state) {
                if (state is LoadingTodoState) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is ErrorTodoState) {
                  return Center(
                    child: Text(
                      state.message,
                      style: const TextStyle(color: Colors.red),
                    ),
                  );
                } else if (state is LoadTodoState) {
                  return _buildTodoList(state.todos);
                } else {
                  return const Center(
                    child: Text('Adicione uma tarefa para começar.'),
                  );
                }
              },
            ),
          ),
          // Campo de entrada e botão de adicionar
          _buildInputField(context),
        ],
      ),
    );
  }

  Widget _buildInputField(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 5,
            offset: Offset(0, -5),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Fazer o que?',
                ),
              ),
            ),
            const SizedBox(width: 15),
            GestureDetector(
              onTap: () {
                final item = _controller.text.trim();
                if (item.isNotEmpty) {
                  context.read<TodoCubit>().add(item);
                  _controller.clear();
                }
              },
              child: CircleAvatar(
                backgroundColor: _controller.text.isEmpty
                    ? Colors.grey
                    : Colors.blue,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTodoList(List<String> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
          trailing: IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () {
              context.read<TodoCubit>().remove(index);
            },
          ),
        );
      },
    );
  }
}
