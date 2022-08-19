import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustonTextField extends StatefulWidget {

  final String labelText;
  final bool isSecret;  
  final Color filled;
  final TextInputType? typeKeyboard;
  final List<TextInputFormatter>? inputFormatters;
  
  const CustonTextField({super.key, required this.labelText, this.isSecret = false, required this.filled, this.typeKeyboard, this.inputFormatters});

  @override
  State<CustonTextField> createState() => _CustonTextFieldState();
}

class _CustonTextFieldState extends State<CustonTextField> {

  bool isObscure = false;
  double height = 50;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: height,
        child: TextFormField(
          inputFormatters: widget.inputFormatters,
          keyboardType: widget.typeKeyboard,
          obscureText: isObscure,
          decoration: InputDecoration(
            fillColor: widget.filled,
            filled: true,
            suffixIcon: widget.isSecret ? IconButton(onPressed: () {
              setState(() {
                isObscure = !isObscure;
              }); 
            }, icon:  Icon(isObscure ? Icons.visibility : Icons.visibility_off),) : null,
            labelText: widget.labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8)
            ),
          ),
        ),
      ),
    );
  }
}