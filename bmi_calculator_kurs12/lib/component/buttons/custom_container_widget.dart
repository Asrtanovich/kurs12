import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.tus,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final Color tus;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: tus,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 36),
          child: Column(
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 100,
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
