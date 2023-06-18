import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/buttons.dart';

class SetIdCardPage extends StatelessWidget {
  const SetIdCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundLightColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 100,
            ),
            width: 155,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            'Verify Your\nAccount',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: baseWhite,
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: backgroundLightColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/ic_upload.png',
                      width: 32,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Passport/ID Card',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          CustomTextButton(
            title: 'Skip For Now',
            onPressed: () {
              Navigator.pushNamed(context, '/success-sign-up');
            },
          ),
        ],
      ),
    );
  }
}
