import 'package:flutter/material.dart';

class CustomStep extends StatelessWidget {
  const CustomStep({
    super.key,
    this.isCompleted = false,
    this.isActive = false,
    this.stepNo = 1,
  });

  final bool isCompleted;
  final bool isActive;
  final int stepNo;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color(
        isActive || isCompleted ? 0xFF6CC51D : 0xFFFFFFFF,
      ),
      child: isCompleted && isActive
          ? const Icon(
              Icons.check_outlined,
              size: 16,
              color: Colors.white,
            )
          : Text(
              stepNo.toString(),
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color(
                  !isActive ? 0xFF868889 : 0xFFFFFFFF,
                ),
              ),
            ),
    );
  }
}
