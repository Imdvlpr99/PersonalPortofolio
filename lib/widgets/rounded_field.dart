import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portofolio/utils/constants.dart';

class RoundedField extends StatelessWidget {
  final Color? backgroundColor;
  final Color? fontColor;
  final double? borderRadius;
  final double? paddingVertical;
  final double? paddingHorizontal;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String text;

  const RoundedField({
    super.key,
    required this.text,
    this.backgroundColor,
    this.borderRadius,
    this.fontColor,
    this.paddingVertical,
    this.paddingHorizontal,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor! ?? mainColor,
        borderRadius: BorderRadius.circular(borderRadius ?? 25)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: paddingVertical ?? 5,
            horizontal: paddingHorizontal ?? 10
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins().copyWith(
            color: fontColor ?? ashLavender,
            fontSize: fontSize ?? 18,
            fontWeight: fontWeight ?? FontWeight.w600
          ),
        ),
      ),
    );
  }

}