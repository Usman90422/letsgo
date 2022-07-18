import 'package:flutter/material.dart';
import 'package:letsgo/widgets/texts/heading_text.dart';

import '../../constants/constant.dart';

class HeadingWithViewAll extends StatelessWidget {
  const HeadingWithViewAll({
    required this.heading,
    required this.onTap,
    this.text,
    Key? key,
  }) : super(key: key);

  final String heading;
  final VoidCallback onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Heading(
            text: heading,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: onTap,
                child:  Text(
                 text ?? "see all",
                  style: const TextStyle(color: kColor),
                ),
              ),
              const Icon(
                Icons.chevron_right,
                color: kColor,
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
