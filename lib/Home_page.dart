import 'package:demolocal1/model/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:demolocal1/utils/router_constants.dart';
import 'package:flutter_randomcolor/flutter_randomcolor.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<TodoModel> listTodo = [];
  int _counter = 0;

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
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    margin: EdgeInsets.all(10),
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                    ),
                    child: ListTile(
                      onTap: () async {
                        final result = await Navigator.pushNamed(
                            context, enterjobRouter,
                            arguments: <String, dynamic>{
                              'isEdit': true,
                              'item': item,
                            });

                        setState(() {
                          listTodo[i] = result as TodoModel;
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
                    ),
                  );
                }),
          ),
        ])),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final result = await Navigator.pushNamed(context, enterjobRouter,
                arguments: <String, dynamic>{
                  'isEdit': true,
                  'item': TodoModel(),
                });

            setState(() {
              listTodo.add(result as TodoModel);
            });
            Navigator.of(context).pushNamed('/EnterjobScreen');
          },
          backgroundColor: Color(0xffE3562A),
          child: Icon(Icons.add),
        ));
  }
}
