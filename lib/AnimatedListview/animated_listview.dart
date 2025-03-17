import 'package:flutter/material.dart';

class AnimatedListview extends StatefulWidget {
  const AnimatedListview({super.key});

  @override
  State<AnimatedListview> createState() => _AnimatedListviewState();
}

final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

List<int> item = [];
int count = 0;

class _AnimatedListviewState extends State<AnimatedListview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        onPressed: () {
          if (listKey.currentState != null) {
            listKey.currentState!
                .insertItem(0, duration: const Duration(milliseconds: 200));
          }
          setState(() {
            item.insert(0, count++);
          });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Animated ListView'),
      ),
      body: SafeArea(
        child: AnimatedList(
          key: listKey,
          initialItemCount: item.length,
          itemBuilder: (context, index, animation) {
            return SizeTransition(
              sizeFactor: animation,
              axis: Axis.vertical,
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: Card(
                  color: Colors.primaries[index],
                  child: Text(
                    'item ${item[index]}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
