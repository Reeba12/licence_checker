import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:'Licence',
      home: FirstScreen()
    );
  }
}
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();

}
class _FirstScreenState extends State<FirstScreen>{
   late int age;
   check() {
   setState(() {
   if(age >= 18){
     showDialog(
     context: context,
     builder: (context) {
     return const AlertDialog(
     content: Text('Allowed'),
     );
     },
     );
   debugPrint('allowed');
   } else{
     showDialog(
     context: context,
     builder: (context) {
     return const AlertDialog(
     content: Text('Not Allowed'),
     );
     },
     );
   debugPrint('not allowed');
   }
   });
      }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               TextField(
                keyboardType:TextInputType.number,
                 decoration: const InputDecoration(
                   labelText: 'Enter your age',
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(width: 3,color: Colors.blue)
                   ),
                 ),
                onChanged: (value){
                 debugPrint(value);
                 var val=int.parse(value);
                 age=val;
                },
              ),
              TextButton(onPressed: check,
                  child: const Text('Check'))
            ],
          ),
        ),
      )
    );
  }

}