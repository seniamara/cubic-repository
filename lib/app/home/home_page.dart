import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 TextEditingController _controller = TextEditingController();
  String _text = '';
  @override
  void initState() {
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubic list to do'),
      ),
      body: Stack(
        
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
             child: 
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
              child: SafeArea(child: Row(
                children: [
                  Expanded(child:  TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Fazer o que?',
                    ),
                  )),
                  const SizedBox(width: 35,),
                  GestureDetector(
                 onTap:   _controller.text.isEmpty ? null : () {
                      setState(() {
                        _text = _controller.text;
                        _controller.clear();
                      });
                    },
                  child: CircleAvatar(
                    backgroundColor: _controller.text.isEmpty ? Colors.grey : Colors.blue,
                    child: const Icon(Icons.add, color: Colors.white,),
                  ),
                  
                  )
                ],
              )),
             )
          )

        ],
      ),
    );
  }
}