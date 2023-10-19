import 'package:flutter/material.dart';

class DetailBackButton extends StatelessWidget {
  const DetailBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => onPressedBackButton(context),
      label: const Text('Voltar'),
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
    );
  }

  void onPressedBackButton(BuildContext context) {
    Navigator.pop(context);
  }
}
