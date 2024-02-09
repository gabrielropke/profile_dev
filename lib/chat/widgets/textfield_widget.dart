import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.left,
      controller: controller,
      keyboardType: TextInputType.text,
      style: const TextStyle(
        fontSize: 15,
      ),
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 25.0, 35.0, 10.0),
        hintText: "Envie uma mensagem para Gabriel...",
        hintStyle: TextStyle(
          color: Color(0xFFA0A0A0),
        ),
        filled: true,
        fillColor: Color(0xFFECECEC),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD2D2D2)),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }
}
