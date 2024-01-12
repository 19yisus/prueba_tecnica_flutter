import "package:flutter/material.dart";

class inputText extends StatelessWidget {
  final ValueChanged<String>? onChange;
  final String labelText;
  const inputText({super.key, required this.onChange, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 5, top: 5),
        child: TextFormField(
          decoration: InputDecoration(labelText: labelText),
          keyboardType: TextInputType.text,
          onChanged: onChange,
        ));
  }
}

class buttonCustom extends StatelessWidget {
  final VoidCallback? onPresed;
  final String textButton;
  const buttonCustom({super.key, this.onPresed, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
          onPressed: onPresed, child: Center(child: Text(textButton))),
    );
  }
}
