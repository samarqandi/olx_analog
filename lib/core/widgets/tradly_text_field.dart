part of 'widgets.dart';

class TradlyTextFieldWidget extends TextField {
  const TradlyTextFieldWidget({
    required this.labelText,
    Key? key,
  }) : super(key: key);
  final String labelText;

  @override
  InputDecoration? get decoration => InputDecoration(labelText: labelText);
}
