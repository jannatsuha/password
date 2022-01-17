import 'package:flutter/material.dart';
//TextEditingController controllerThis=TextEditingController();
class CustomTextField extends StatefulWidget {
  String labelText;
  String hintText;
  bool obsecureValue;
  IconData icon;
  TextEditingController controller;
   CustomTextField({Key? key,
   required this.controller,
   required this.labelText,
   required this.hintText,
   required this.icon,
   required this.obsecureValue,
   }) : super(key: key);


  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0,right: 28),
      child: TextFormField(
        obscureText: widget.obsecureValue,
        autofocus: true,
        controller: widget.controller,
        cursorColor: Colors.teal,
        decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: Icon(widget.icon,
          color: Colors.teal,),
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: Colors.teal
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.teal
            ),
            borderRadius: BorderRadius.circular(15)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.teal
              ),
              borderRadius: BorderRadius.circular(15)
          ),
        ),
      ),

    );
  }
}
