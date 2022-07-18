import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {

  final String hintText;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmit;
  final TextInputAction? textInputAction;
  final TextInputType? inputType;
  final TextEditingController? controller;

  PasswordTextField({Key? key,required this.hintText, this.onChanged, this.onSubmit, this.textInputAction, this.inputType, this.controller}) : super(key: key);


  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}


class _PasswordTextFieldState extends State<PasswordTextField> {

  var hide = true;

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
        style:  TextStyle(color: Colors.black.withOpacity(0.5)),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(fontSize: 15.0, color: Colors.grey),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 10, top: 12),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                hide = !hide;
              });
            }, icon: hide ==true ? const Icon(Icons.visibility_off,color: Colors.grey,):const Icon(Icons.visibility,color: Colors.grey),),
        ),
        onSubmitted: widget.onSubmit,
        onChanged: widget.onChanged,
        textInputAction: widget.textInputAction,
        keyboardType: widget.inputType,
        obscureText: hide,
      ),
    );
  }
}
