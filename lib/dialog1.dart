import 'package:alert_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Dialog1 extends StatelessWidget {
  const Dialog1({
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
          Padding(
            padding: const EdgeInsets.fromLTRB(120, 40, 120, 0),
            child: Image.asset(
              'images/Frame.png',
            ),
          ),
          const Text(
            'Congrats!',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(
            width: 200,
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 60,
                    child: Image.asset('images/Ellipse.png')),
                SizedBox(
                    width: 120,
                    height: 60,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Ajay Shamra',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text(
                            'invited you to create AI avatars',
                            style:
                                TextStyle(color: AppColors.fadeColor),
                          ),
                        ])),
              ],
            ),
          ),
          Container(
            color: AppColors.couponColor,
            height: 41,
            width: 270,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Get ',
                style: TextStyle(
                  color: AppColors.fadeColor,
                  fontSize: 12.0,
                ),
                children: <TextSpan>[
                  const TextSpan(
                    text: '50% Off',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                  TextSpan(
                    text: ' on AI Avatars',
                    style: TextStyle(
                      color: AppColors.fadeColor,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Valid until May 20, 2023',
              style: TextStyle(
                color: AppColors.fadeColor,
                fontSize: 12.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '+2 Other Rewards',
              style: TextStyle(
                color: AppColors.fadeColor,
                fontSize: 12.0,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0)),
                minimumSize: const Size(250, 50),
                backgroundColor: AppColors.buttonColor,
              ),
              child: const Text(
                'Claim offer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}