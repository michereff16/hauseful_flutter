import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final TextEditingController inputController;
  final String hintText;
  final IconData icon;
  const CustomFormField({
    super.key,
    required this.inputController,
    required this.hintText,
    required this.icon,
  });

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: widget.inputController,
        onChanged: (value) {
          //Do something wi
        },
        keyboardType: TextInputType.emailAddress,
        obscureText: passwordVisible,
        style: const TextStyle(
          fontSize: 14,
          color: Color(0xFF043C5C),
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.icon,
            color: const Color(0xFF043C5C),
          ),
          suffixIcon: widget.hintText == 'Insira sua senha'
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                  icon: Icon(
                    passwordVisible ? Icons.visibility_off : Icons.visibility,
                    color: const Color(0xFF043C5C),
                  ),
                )
              : null,
          hintText: widget.hintText,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 0.0,
            horizontal: 20.0,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF043C5C),
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF043C5C),
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF043C5C),
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
