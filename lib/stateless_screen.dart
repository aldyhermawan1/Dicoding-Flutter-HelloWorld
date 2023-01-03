import 'package:flutter/material.dart';

class FirstScreenStateless extends StatelessWidget {
  const FirstScreenStateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen Stateless'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: const [
                Text(
                  'Judul',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Text('Lorem Ipsum')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child: const Text('Elevated'),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text('Text'),
                  onPressed: () {},
                ),
                OutlinedButton(
                  child: const Text('Outlined'),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.smart_button),
                  tooltip: 'Icon',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}