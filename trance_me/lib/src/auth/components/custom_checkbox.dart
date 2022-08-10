import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {

  const CustomCheckbox({super.key, required this.value, required this.onChanged});

  final bool value;
  final ValueChanged<bool?> onChanged;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10),
      child: Row(
        children: [
          Checkbox(
            value: widget.value, 
            onChanged: widget.onChanged
          ),
          const Text("Aceitar Termos")
        ],
      ),
    );
  }
}