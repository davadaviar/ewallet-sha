import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SuccessSignUpPage extends StatelessWidget {
  const SuccessSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundLightColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Akun Berhasil\nTerdaftar',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Grow your finance start\ntogether with us',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            const CustomFilledButton(
              width: 183,
              title: 'Get Started',
            ),
          ],
        ),
      ),
    );
  }
}
