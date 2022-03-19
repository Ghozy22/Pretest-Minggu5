import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Pass Data',
      home: halamanPertama(
        todos: List.generate(20, (i) => Todo('Todo $i', 'A description of what needs to be done for Todo $i'))
      ),
    )
  );
}

class Todo{
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

class halamanPertama extends StatelessWidget {
  const halamanPertama({ Key? key, required this.todos }) : super(key: key);

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => detailScreen(todo: todos[index]),));
            },
          );
        },
      ),
    );
  }
}

class detailScreen extends StatelessWidget {
  const detailScreen({ Key? key, required this.todo }) : super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Padding(padding: const EdgeInsets.all(16.0)
      , child: Text(todo.description),
      ),
    );
  }
}