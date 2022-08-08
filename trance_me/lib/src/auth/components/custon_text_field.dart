import 'package:flutter/material.dart';

class CustonTextField extends StatefulWidget {

  final String labelText;
  final bool isSecret;  
  final Color filled;
  
  

  const CustonTextField({super.key, required this.labelText, this.isSecret = false, required this.filled });

  @override
  State<CustonTextField> createState() => _CustonTextFieldState();
}

class _CustonTextFieldState extends State<CustonTextField> {

  bool isObscure = false;

  @override
  void initState() {
    super.initState();

    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 19),
      child: TextFormField(
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
    );
  }
}