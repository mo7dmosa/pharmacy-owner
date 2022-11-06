import 'package:flutter/material.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator({
    Key? key,
    required bool isSelected,
    double marginEnd = 0,
  })  : _isSelected = isSelected,
        _marginEnd = marginEnd,
        super(key: key);

  final bool _isSelected;
  final double _marginEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _isSelected ? 30 : 8,
      height: 8,
      margin: EdgeInsetsDirectional.only(end: _marginEnd),
      decoration: BoxDecoration(
        color: _isSelected ? Color(0xFFA71D39) : Color(0xFFDDDDDD),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
