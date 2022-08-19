import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isAuth = false;
    return isAuth ? const _ProfileIsAuthWidget() : const _ProfileIsNotAuth();
  }
}

class _ProfileIsNotAuth extends StatelessWidget {
  const _ProfileIsNotAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white60,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(onPressed: () {}, child: const Text('Authorisation')),
            TextButton(onPressed: () {}, child: const Text('Registration')),
          ],
        ),
      ),
    );
  }
}

class _ProfileIsAuthWidget extends StatelessWidget {
  const _ProfileIsAuthWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              color: Colors.green,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  _TopWidget(),
                  SizedBox(height: 50),
                  _TradlyTeamWidget(),
                ],
              ),
            ),
          ],
        ),
        const Positioned(
          top: 200,
          left: 20,
          right: 20,
          child: _ButtonsColumnWidget(),
        ),
      ],
    );
  }
}

class _ButtonsColumnWidget extends StatelessWidget {
  const _ButtonsColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(onPressed: () {}, child: Text('Edit Profile')),
          TextButton(onPressed: () {}, child: Text('Language & Currency')),
          TextButton(onPressed: () {}, child: Text('Feedback')),
          TextButton(onPressed: () {}, child: Text('Refer a Friend')),
          TextButton(onPressed: () {}, child: Text('Terms and Conditions')),
          TextButton(onPressed: () {}, child: Text('Logout')),
        ],
      ),
    );
  }
}

class _TopWidget extends StatelessWidget {
  const _TopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Profile'),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        IconButton(onPressed: () {}, icon: Icon(Icons.add_business_sharp)),
      ],
    );
  }
}

class _TradlyTeamWidget extends StatelessWidget {
  const _TradlyTeamWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(child: Text('T'), minRadius: 30),
        Column(
          children: [
            Text('Tradly Team'),
            Text('+998 90 999 99 99'),
            Text('info@tradly.co'),
          ],
        ),
      ],
    );
  }
}
