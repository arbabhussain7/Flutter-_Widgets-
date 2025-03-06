import 'package:flutter/material.dart';

class ReorderListviewBuilder extends StatefulWidget {
  const ReorderListviewBuilder({super.key});

  @override
  State<ReorderListviewBuilder> createState() => _ReorderListviewBuilderState();
}

class _ReorderListviewBuilderState extends State<ReorderListviewBuilder> {
  List<String> productList = [
    'Apple',
    'Banana',
    'Orange',
    'Mango',
    'Watermelon',
    'Cherry'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Reorderable Listview',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: ReorderableListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return Card(
            key: ValueKey(productList[index]),
            color: Colors.indigo,
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              title: Text(
                productList[index],
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              trailing: const Icon(Icons.drag_handle, color: Colors.white70),
            ),
          );
        },
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex > newIndex) {
              newIndex = newIndex - 1;
            }
            final String item = productList.removeAt(oldIndex);
            productList.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
