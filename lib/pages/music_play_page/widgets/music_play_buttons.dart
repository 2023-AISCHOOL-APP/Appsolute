import 'package:flutter/material.dart';
import 'package:flutter_test_project/widgets/app_text.dart';

class MusicPlayButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  double? iconSize;
  final Color? backColor;
  final Color? iconColor;
  IconData? icon;
  final VoidCallback? onPressed;
  MusicPlayButton({super.key, this.iconColor ,this.backColor,this.iconSize, this.width = 60, this.isResponsive = false, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: isResponsive==true?double.infinity:width,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: backColor==null?Colors.black54:backColor
          ),
          child: Row(
            mainAxisAlignment: isResponsive==true?MainAxisAlignment.spaceBetween :MainAxisAlignment.center,
            children: [
              Center(child: Icon(icon, size: iconSize, color: iconColor,)),
            ],
          ),
        ),
      ),
    );
  }
}