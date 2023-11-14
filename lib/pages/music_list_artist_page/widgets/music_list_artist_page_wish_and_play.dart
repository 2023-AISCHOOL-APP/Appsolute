import 'package:flutter/material.dart';
import 'package:flutter_test_project/widgets/sized_box_widgets.dart';

class ArtistWishButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color? btnColor;

  const ArtistWishButton(
      {super.key, required this.onTap, this.btnColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: btnColor, // 배경색
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(btnColor == Colors.white ? Icons.add : Icons.check),
            SizedBox(width: 5), // SizeBoxW05() 대신 사용
            Text(
              btnColor == Colors.white ? "구독 하기" : "구독 완료",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ArtistPlayButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color? btnColor;

  const ArtistPlayButton(
      {super.key, required this.onTap, this.btnColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: btnColor, // 배경색
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shuffle),
            SizedBox(width: 5), // SizeBoxW05() 대신 사용
            Text(
              "셔플",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
