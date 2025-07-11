import 'package:flutter/material.dart';
import '../../widgets/drawer_widget.dart';

class TodoScreen extends StatefulWidget {
  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final List<String> todos = [];
  final TextEditingController controller = TextEditingController();

  void addTodo() {
    if (controller.text.isNotEmpty) {
      setState(() => todos.add(controller.text));
      controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('To-Do')),
      drawer: buildDrawer(context),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Tambahkan tugas',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: addTodo,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (_, i) => ListTile(title: Text(todos[i])),
            ),
          ),
        ],
      ),
    );
  }
}
