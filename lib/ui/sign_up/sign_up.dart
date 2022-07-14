import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.greenAccent,
        width: double.infinity,
        child: Column(
          children: const [
            Text('Welcome'),
            Text('Welcome'),
            TextField(
              decoration: InputDecoration(
                labelText: 'First Name',
              ),
            ),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
          ],
        ),
      ),
    );
  }
}
