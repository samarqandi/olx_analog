part of 'widgets.dart';

class SignInRowWidget extends Row {
  final String title;
  final VoidCallback onPressed;
  final String textOfButton;
  SignInRowWidget({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.textOfButton,
  }) : super(key: key);

  @override
  MainAxisAlignment get mainAxisAlignment => MainAxisAlignment.center;

  @override
  List<Widget> get children => <Widget>[
        Text(title),
        TextButton(onPressed: onPressed, child: Text(textOfButton)),
      ];
}
