import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.greenAccent,
          width: double.infinity,
          child: Column(
            children: [
              Text('Welcome to Tradly',
                  style: Theme.of(context).textTheme.headline5),
              Text(
                'Signup to your account',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 18),
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
                    ),
                  ),
                  SizedBox(height: 18),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                    ),
                  ),
                  SizedBox(height: 18),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email / Phone Number',
                    ),
                  ),
                  SizedBox(height: 18),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: 18),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Re-enter Password',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18),
              Container(
                constraints: BoxConstraints(
                  minHeight: 50,
                  minWidth: 300,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Colors.white,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Create',
                    style: TextStyle(color: Colors.greenAccent),
                  ),
                  style: ButtonStyle(
                    maximumSize: MaterialStateProperty.all(const Size(200, 60)),
                  ),
                ),
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have an account ?'),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign in',
                        style: Theme.of(context).textTheme.bodyText2,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
