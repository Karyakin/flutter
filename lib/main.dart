import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: UserPanel(),
    ));

class UserPanel extends StatefulWidget {
  const UserPanel({super.key});

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: const Text('User information'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 10)),
                const Text(
                  'Дмитрий Карякин',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/photo_2022-08-03_22-49-07.jpg'),
                  radius: 50,
                ),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                Row(
                  children: const [
                    Icon(
                      Icons.mail_outline_sharp,
                      size: 20,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text('375447955552dk@gmail.com')
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                Text(
                  'Count: $_count',
                  style: const TextStyle(fontSize: 30),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if(_count >= 10) {
              _count = 0;
            }
            _count++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}
