import 'package:flutter/material.dart';

class FirstScreenStateful extends StatefulWidget {
  const FirstScreenStateful({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreenStateful> {
  String? languageDropdown;
  String? languageRadio;
  String? _name = '';
  bool switchState = false;
  bool checkBoxState = false;

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen Stateful'),
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
      body: SingleChildScrollView(
        child: Column(
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
            const Text("BUTTON", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
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
            Padding(
              padding: const EdgeInsets.all(16),
              child: DropdownButton(
                items: const [
                  DropdownMenuItem(value: 'Dart', child: Text('Dart')),
                  DropdownMenuItem(value: 'Kotlin', child: Text('Kotlin')),
                  DropdownMenuItem(value: 'Swift', child: Text('Swift')),
                ],
                value: languageDropdown,
                hint: const Text('Dropdown Button'),
                onChanged: (String? value) {
                  setState(() {
                    languageDropdown = value;
                  });
                },
              ),
            ),
            const Text("TEXT FIELD", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                        hintText: 'Write your name here...',
                        labelText: 'OnChanged TextField'),
                    onChanged: (String value) {
                      setState(() {
                        _name = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    child: const Text('Submit'),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(content: Text('$_name'));
                          });
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, top: 4, right: 16, bottom: 16),
              child: Column(
                children: [
                  TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                        hintText: 'Write your name here...',
                        labelText: 'Controller TextField'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    child: const Text('Submit'),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(content: Text(_controller.text));
                          });
                    },
                  )
                ],
              ),
            ),
            const Text("SWITCH", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Switch(
                value: switchState,
                onChanged: (bool value) {
                  setState(() {
                    switchState = value;
                    showSnackbar(switchState ? 'Switch On' : 'Switch Off');
                  });
                },
              ),
            ),
            const Text("RADIO", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: const Text('Dart'),
                    leading: Radio(
                      value: 'Dart',
                      groupValue: languageRadio,
                      onChanged: (String? value) {
                        setState(() {
                          languageRadio = value;
                          showSnackbar(languageRadio!);
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Kotlin'),
                    leading: Radio(
                      value: 'Kotlin',
                      groupValue: languageRadio,
                      onChanged: (String? value) {
                        setState(() {
                          languageRadio = value;
                          showSnackbar(languageRadio!);
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Swift'),
                    leading: Radio(
                      value: 'Swift',
                      groupValue: languageRadio,
                      onChanged: (String? value) {
                        setState(() {
                          languageRadio = value;
                          showSnackbar(languageRadio!);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Text("CHECKBOX", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ListTile(
                title: const Text('Agreement'),
                leading: Checkbox(
                  value: checkBoxState,
                  onChanged: (bool? value) {
                    setState(() {
                      checkBoxState = value!;
                      showSnackbar(switchState ? 'Agree' : 'Disagree');
                    });
                  },
                ),
              ),
            ),
            const Text("IMAGE", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Image.network(
                    'https://picsum.photos/200/300',
                    width: 200,
                    height: 300,
                  ),
                  Image.asset(
                    'images/android.png',
                    width: 200,
                    height: 200,
                  )
                ],
              )
            ),
            const Text("CUSTOM FONTS", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    Text(
                      'RobotoMono',
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'RobotoMono Italic',
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 24,
                        fontStyle: FontStyle.italic
                      ),
                    ),
                    Text(
                      'RobotoMono Bold',
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 24,
                        fontWeight: FontWeight.w700
                      )
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void showSnackbar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(value),
      duration: const Duration(seconds: 1),
    ));
  }
}
