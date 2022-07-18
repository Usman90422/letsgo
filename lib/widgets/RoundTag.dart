import 'package:flutter/material.dart';

class RoundTag extends StatelessWidget {
  const RoundTag({
    required this.text,
    required this.onTap,
    required this.icon,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.black12,
                shape: BoxShape.circle,
              ),
              child:  Center(
                child: Icon(icon,color: Colors.black38,),
              ),
            ),
          ),
          const SizedBox(height: 2),
           Text(text,style: TextStyle(color: Colors.black,fontSize: 12),),
        ],
      ),
    );
  }
}
