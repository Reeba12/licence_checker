import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Licence',
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  late int age;
  String status = '';

  void check() {
    if (age >= 18) {
      status = 'Allowed';
      debugPrint('allowed');
    } else {
      status = 'Not Allowed';
      debugPrint('not allowed');
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter your age',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.blue,
                    ),
                  ),
                ),
                onChanged: (value) {
                  debugPrint(value);
                  int parsedAge = int.parse(value);
                  age = parsedAge;
                },
              ),
              TextButton(
                onPressed: check,
                child: const Text('Check'),
              ),
              Text(status)
            ],
          ),
        ),
      ),
    );
  }
}
