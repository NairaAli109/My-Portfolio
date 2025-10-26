import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.fillColor,
    this.borderColor,
    this.hoverColor,
    this.textColor,
  });

  final Function onTap;
  final String text;
  final Color? textColor;
  final Color fillColor;
  final Color? borderColor;
  final Color? hoverColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.all(10),
      child: InkWell(
        onTap: () {
          onTap();
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: hoverColor ?? Colors.transparent,
        hoverDuration: Duration(milliseconds: 300),
        borderRadius: BorderRadius.circular(6),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: fillColor,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: borderColor ?? Colors.transparent),
          ),
          child: CustomText(
            text: text,
            textColor: textColor,
            fontWeight: FontWeight.w600,
            fontSize: 13.2,
          ),
        ),
      ),
    );
  }
}
