import 'package:flutter/material.dart';
import 'package:test/core/packages/provider/src/provider.dart';

import '../domain/services/user_service.dart';

class ViewModelState {
  final String ageTitle;

  ViewModelState({
    required this.ageTitle,
  });
}

class ViewModel extends ChangeNotifier {
  final _userService = UserService();

  var _state = ViewModelState(ageTitle: '');
  ViewModelState get state => _state;

  void loadValue() async {
    await _userService.initialize();
    _updateState();
  }

  ViewModel() {
    loadValue();
  }

  Future<void> onIncrementButtonPressed() async {
    _userService.incrementAge();
    _updateState();
  }

  Future<void> onDecrementButtonPressed() async {
    _userService.decrementAge();
    _updateState();
  }

  void _updateState() {
    _state = ViewModelState(
      ageTitle: _userService.user.age.toString(),
    );
    notifyListeners();
  }
}

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            AgeTitleWidget(),
            AgeIncButtonWidget(),
            AgeDecrButtonWidget(),
          ],
        ),
      ),
    );
  }
}

class AgeTitleWidget extends StatelessWidget {
  const AgeTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = context.select((ViewModel vm) => vm.state.ageTitle);
    return Text(title);
  }
}

class AgeIncButtonWidget extends StatelessWidget {
  const AgeIncButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<ViewModel>();
    return ElevatedButton(
      onPressed: viewModel.onIncrementButtonPressed,
      child: Text('+'),
    );
  }
}

class AgeDecrButtonWidget extends StatelessWidget {
  const AgeDecrButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<ViewModel>();
    return ElevatedButton(
      onPressed: viewModel.onDecrementButtonPressed,
      child: Text('-'),
    );
  }
}
