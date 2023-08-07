import 'package:flutter/material.dart';
import 'package:intl/intl_browser.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<TodoModel> listTodo = [];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Center(
              child: Column(children: [
            Expanded(
              child: ListView.builder(
                  itemCount: listTodo.length,
                  shrinkWrap: true,
                  itemBuilder: (ctx, i) {
                    final item = listTodo[i];
                    return ListTile(
                      onTap: () async {
                        final result =
                            await Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AddTodo(
                                      isEdit: true,
                                      items: item,
                                    )));

                        setState(() {
                          listTodo[i] = result;
                        });
                      },
                      onLongPress: () {
                        showDialog(
                            context: context,
                            builder: (ctx) {
                              return AlertDialog(
                                title: Text("Bạn có muốn xóa cv "),
                                content: Text("chắc chưa"),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          listTodo.removeAt(i);
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Text("Ok"))
                                ],
                              );
                            });
                      },
                      title: Text(
                        item.title ?? '',
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.conTent ?? ''),
                          Text(DateFormat('dd/MM/yyyy')
                              .format(item.time ?? DateTime.now())),
                        ],
                      ),
                    );
                  }),
            ),
          ])),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              final result = await Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AddTodo(
                        isEdit: false,
                        items: TodoModel(),
                      )));
              setState(() {
                listTodo.add(result);
              });
              Navigator.of(context).pushNamed('/EnterjobScreen');
            },
            backgroundColor: Color(0xffE3562A),
            child: Icon(Icons.add),
          ));
    }
  }
}
