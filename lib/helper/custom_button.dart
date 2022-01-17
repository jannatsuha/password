import 'package:flutter/material.dart';
class CustomButton extends StatefulWidget {
  String buttonText;
  double height;
  double width;
  Color buttonClr;
   CustomButton({Key? key,
   required this.buttonText,
   required this.height,
   required this.width,
   required this.buttonClr,
   }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only
        (left: 28.0,right: 28),
      child: Container(
        decoration: BoxDecoration(
          color: widget.buttonClr,
          borderRadius: BorderRadius.circular(15)
        ),
        height: widget.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
