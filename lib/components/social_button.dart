import 'package:doctor_appointment_app/utils/config.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.social,
  });
  final String social;
  @override
  Widget build(BuildContext context) {
    Config.init(context);
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        side: const BorderSide(color: Colors.black),
        shape: const RoundedRectangleBorder(),
      ),
      child: SizedBox(
        width: Config.widthSize * 0.25,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/$social.png',
              height: 40,
              width: 40,
            ),
            Text(
              social.toUpperCase(),
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
