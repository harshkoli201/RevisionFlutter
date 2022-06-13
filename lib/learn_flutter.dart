import 'package:flutter/material.dart';

class LearnflutterPage extends StatefulWidget {
  const LearnflutterPage({Key? key}) : super(key: key);

  @override
  State<LearnflutterPage> createState() => _LearnflutterPageState();
}

class _LearnflutterPageState extends State<LearnflutterPage> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LearnFlutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/h2r.jpg'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.red,
          ),
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(5.0),
            color: Colors.black,
            width: double.infinity,
            child: const Center(
              child: Text(
                'Kawasaki H2R',
                style: TextStyle(color: Colors.lightGreen),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('TextButton'),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('This is the Kawasaki hot bike');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.green,
                ),
                Text('Kawasaki'),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.green,
                ),
              ],
            ),
          ),
          Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              })
        ],
      ),
    );
  }
}
