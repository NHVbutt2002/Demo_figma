import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:demolocal1/model/todo_model.dart';

class EnterjobScreen extends StatefulWidget {
  const EnterjobScreen({Key? key, this.isEdit = false, required this.items})
      : super(key: key);
  final bool isEdit;
  final TodoModel items;

  @override
  _EnterjobScreenState createState() => _EnterjobScreenState();
}

class _EnterjobScreenState extends State<EnterjobScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController content = TextEditingController();
  TextEditingController timeController = TextEditingController();
  DateTime time = DateTime.now();
  @override
  void initState() {
    super.initState();

    if (widget.isEdit) {
      titleController.text = widget.items.title ?? '';
      content.text = widget.items.conTent ?? '';
      timeController.text =
          DateFormat('dd/MM/yyyy').format(widget.items.time ?? DateTime.now());
    } else {
      timeController.text = DateFormat('dd/MM/yyyy').format(DateTime.now());
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.isEdit ? Text('sửa todo') : Text('Thêm todo'),
      ),
      body: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(hintText: "Tiêu đề"),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: content,
            decoration: const InputDecoration(hintText: "Content"),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: timeController,
            decoration: const InputDecoration(hintText: "Time"),
            readOnly: true,
            onTap: () async {
              final picker = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1990),
                  lastDate: DateTime.now());

              time = picker ?? DateTime.now();

              timeController.text = DateFormat('dd/MM/yyyy').format(time);
            },
            onChanged: (value) {
              setState(() {});
            },
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(TodoModel(
                    title: titleController.text.toString(),
                    conTent: content.text.trim(),
                    time: time));
              },
              child:
                  widget.isEdit ? const Text("Chỉnh sửa ") : const Text("thêm"))
        ],
      ),
    );
  }
}
