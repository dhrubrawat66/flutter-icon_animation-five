import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    required this.firstIcon,
    required this.secondIcon,
    Key? key,
  }) : super(key: key);
  final IconData firstIcon;
  final IconData secondIcon;
  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  bool enter = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 120,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (a) {
          setState(() {
            enter = true;
          });
        },
        onExit: (a) {
          setState(() {
            enter = false;
          });
        },
        child: AnimatedContainer(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: enter ? Colors.blue : Colors.black,
            borderRadius: BorderRadius.circular(60),
          ),
          duration: const Duration(milliseconds: 300),
          width: 120,
          height: 120,
          child: Icon(
            enter ? widget.firstIcon : widget.secondIcon,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    );
  }
}
