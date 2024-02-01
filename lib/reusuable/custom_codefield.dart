import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeField extends StatelessWidget {
  const CodeField({
    required this.codeController,
    super.key,
  });

  final TextEditingController codeController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: TextFormField(
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        controller: codeController,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: const InputDecoration(hintText: "○", border: InputBorder.none),
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        textAlign: TextAlign.center,
      ),
    );
  }
}