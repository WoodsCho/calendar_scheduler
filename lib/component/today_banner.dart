import 'package:calendar_scheduler/const/colors.dart';
import 'package:flutter/material.dart';

class TodayBanner extends StatelessWidget {
  final DateTime selecdtedDate;
  final int count;

  const TodayBanner({
    required this.count,
    required this.selecdtedDate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
    return Container(
      color: PRIMARY_COLOR,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            '${selecdtedDate.year}년 ${selecdtedDate.month}월 ${selecdtedDate.day}일',
            style: textStyle,
          ),
          Text(
            '$count개',
            style: textStyle,
          )
        ]),
      ),
    );
  }
}
