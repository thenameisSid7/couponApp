import 'package:alert_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Dialog3 extends StatelessWidget {
  const Dialog3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.dialogColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Woo!',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(120, 40, 120, 0),
            child: Image.asset(
              'images/Ellipse.png',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
              width: 220,
              height: 50,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Ajay Shamra',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12)),
                    Text(
                      ' Downloaded ImagineGo using your invite',
                      style: TextStyle(
                        color: AppColors.fadeColor,
                        fontSize: 12,
                      ),
                    ),
                  ])),
          Container(
            color: AppColors.couponColor,
            height: 60,
            width: 200,
            child: SizedBox(
              width: 100,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'When Ajay creates his AI Avatars you get ',
                  style: TextStyle(
                    color: AppColors.fadeColor,
                    fontSize: 12.0,
                  ),
                  children: <TextSpan>[
                    const TextSpan(
                      text: ' 50% ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                    TextSpan(
                      text: 'on yours.',
                      style: TextStyle(
                        color: AppColors.fadeColor,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Valid until May 23, 2023',
              style: TextStyle(
                color: AppColors.fadeColor,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}