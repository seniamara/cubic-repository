import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _items = []; // Lista para armazenar as tarefas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubic List To Do'),
      ),
      body: Column(
        children: [
          // Exibe a lista de itens adicionados
          Expanded(
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_items[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      setState(() {
                        _items.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
          // Campo de entrada e botão de adicionar
          Container(
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
                      onChanged: (_) {
                        setState(() {}); // Atualiza a UI ao digitar
                      },
                      decoration: const InputDecoration(
                        hintText: 'Fazer o que?',
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: _controller.text.isEmpty
                        ? null
                        : () {
                            setState(() {
                              _items.add(_controller.text); // Adiciona o texto à lista
                              _controller.clear(); // Limpa o campo
                            });
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
          ),
        ],
      ),
    );
  }
}
