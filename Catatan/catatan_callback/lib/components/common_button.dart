import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String label;
  // ini deklarasi fungsi callback
  final Function(String) callback;

  const CommonButton({
    Key? key,
    required this.label,
    required this.callback,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback("ini data callback dari $label");
      },
      child: Text(label),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(160, 40),
      ),
    );
  }
}
