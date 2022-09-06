import 'package:flutter/material.dart';
import 'package:pick_my_parcel_customer/constants/constants.dart';

class InputBox3 extends StatelessWidget {
  final String hintText;
  final double boxWidth;
  final String suffixText;
  final TextEditingController weightController;
  const InputBox3(
      {required this.boxWidth,
      required this.hintText,
      required this.suffixText,
      required this.weightController});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Flexible(
      child: Container(
        height: screenHeight * 0.0564,
        constraints: BoxConstraints(
          maxWidth: boxWidth,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xffE0E0E0), width: 1.0),
          color: Colors.white,
        ),
        child: TextFormField(
          controller: weightController,
          keyboardType: TextInputType.number,
          style: TextStyle(
            fontFamily: 'PT Sans',
            fontSize: screenHeight * 0.0158,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
              suffixIcon: Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.0105),
                child: Text(
                  suffixText,
                  style: TextStyle(
                      fontFamily: 'PT Sans',
                      fontWeight: FontWeight.w700,
                      fontSize: screenHeight * 0.0225,
                      color: primaryColor1),
                ),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.w400,
                fontSize: screenHeight * 0.0158,
                color: const Color(0xffB8B8B8),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffE0E0E0)),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                    color: Color(0xffE0E0E0),
                  )),
              contentPadding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.021,
                  vertical: screenHeight * 0.009)),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
      ),
    );
  }
}
