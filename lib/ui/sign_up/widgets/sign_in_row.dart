import 'package:flutter/material.dart';

class SignInRowWidget extends StatelessWidget {
  const SignInRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Have an account ?'),
        TextButton(
          onPressed: () {},
          child: Text(
            'Sign in',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      ],
    );
  }
}
