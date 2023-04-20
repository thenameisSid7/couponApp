import 'package:alert_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Dialog2 extends StatelessWidget {
  const Dialog2({
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
            height: 20,
          ),
          SizedBox(
            width: 200,
            height: 45,
            child: SizedBox(
                width: 200,
                height: 35,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Ajay Shamra',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 12)),
                      Text(
                        'Created AI Avatars using your invite',
                        style: TextStyle(
                          color: AppColors.fadeColor,
                          fontSize: 12,
                        ),
                      ),
                    ])),
          ),
          Container(
            color: AppColors.couponColor,
            height: 60,
            width: 200,
            child: SizedBox(
              width: 100,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Now you can create AI Avatars@ ',
                  style: TextStyle(
                    color: AppColors.fadeColor,
                    fontSize: 12.0,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: '50% OFF',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Valid until May 23, 2023',
              style: TextStyle(
                color: AppColors.fadeColor,
                fontSize: 12.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
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