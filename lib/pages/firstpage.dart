import 'package:flutter/material.dart';
import 'package:lab6_642021143/hobby.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Hobby> hobbies = [];
  List _seclectedItem = [];

  String hobbyvalue = "เลือกงานอดิเรก";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hobbies = Hobby.getHobby();
    print(hobbies);
  }

  List<Widget> createCheckbox() {
    List<Widget> widget = [];

    for (var hb in hobbies) {
      widget.add(CheckboxListTile(
        value: hb.value,
        onChanged: (value) {
          setState(() {
            hb.value = value!;

            if (value) {
              _seclectedItem.add(hb.name);
            } else {
              _seclectedItem.remove(hb.name);
            }
          });
        },
        title: Text(hb.name),
      ));
    }
    return widget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lab6"),
        elevation: 10,
        backgroundColor: Color.fromARGB(244, 236, 93, 212),
      ),
      body: Column(
        children: [
          Text("งานอดิเรก"),
          Column(
            children: createCheckbox(),
          ),
          Text(
            _seclectedItem.toString(),
            style: const TextStyle(fontSize: 10, color: Colors.black),
          ),
          Text(
            hobbyvalue,
            style: const TextStyle(fontSize: 20, color: Colors.red),
          )
        ],
      ),
    );
  }
}
