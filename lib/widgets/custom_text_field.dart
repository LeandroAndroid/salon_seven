import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {

  final TextEditingController controller;
  final String hint;
  final Widget prefix;
  final Widget suffix;
  final bool obscure;
  final TextInputType textInputType;
  final Function(String) onChanged;
  final bool enabled;
  final String errorText;
  final bool autoCorrect;
  final String Function(String) validator;
  final String Function(String) onSaved;

  CustomTextField(
      {this.hint,
        this.prefix,
        this.suffix,
        this.obscure = false,
        this.textInputType,
        this.onChanged,
        this.enabled,
        this.controller,
        this.errorText,
        this.autoCorrect = false,
        this.validator,
        this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: this.onSaved,
      autocorrect: this.autoCorrect,
      controller: controller,
      obscureText: obscure,
      enabled: enabled,
      onChanged: onChanged,
      validator: this.validator,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: textInputType,
      style: GoogleFonts.quicksand(
        fontSize: 18,
      ),
      decoration: InputDecoration(
        errorText: errorText,
        errorStyle: TextStyle(color: Color.fromARGB(255, 153, 0, 51)),
        prefixIcon: prefix,
        suffixIcon: suffix,
        hintText: hint,
        contentPadding: EdgeInsets.all(4),
        filled: true,
        fillColor: Colors.grey[200],
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32)),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 153, 0, 51),
            )),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)),
          borderSide: BorderSide.none,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
