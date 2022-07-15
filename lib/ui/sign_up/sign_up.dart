import 'package:flutter/material.dart';

import 'widgets/create_button.dart';
import 'widgets/sign_in_row.dart';
import 'widgets/tradly_text_field.dart';

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
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: const [
                    TradlyTextFieldWidget(labelText: 'First Name'),
                    SizedBox(height: 18),
                    TradlyTextFieldWidget(labelText: 'Last Name'),
                    SizedBox(height: 18),
                    TradlyTextFieldWidget(labelText: 'Email / Phone Number'),
                    SizedBox(height: 18),
                    TradlyTextFieldWidget(labelText: 'Password'),
                    SizedBox(height: 18),
                    TradlyTextFieldWidget(labelText: 'Re-enter Password'),
                  ],
                ),
              ),
              const CreateButtonWidget(),
              const SizedBox(height: 18),
              const SignInRowWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
