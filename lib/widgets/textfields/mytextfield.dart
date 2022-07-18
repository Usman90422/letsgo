import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    Key? key,
    required this.hintText,
    this.onSubmit,
    this.controller,
    this.onChanged,
    this.textInputAction,
    this.inputType,
    this.onIconPressed,
  }) : super(key: key);

  final String hintText;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmit;
  final TextInputAction? textInputAction;
  final TextInputType? inputType;
  final VoidCallback? onIconPressed;
  final TextEditingController? controller;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 50,
      decoration: BoxDecoration(
        color:  Colors.grey.withOpacity(0.15),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: widget.controller,
        style: TextStyle(color: Colors.black.withOpacity(0.5)),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(
              fontSize: 15.0, color: Colors.grey),
          border: InputBorder.none,
          contentPadding:  const EdgeInsets.only(left: 10),
        ),
        onSubmitted: widget.onSubmit,
        onChanged: widget.onChanged,
        textInputAction: widget.textInputAction,
        keyboardType: widget.inputType,

      ),
    );
  }
}
