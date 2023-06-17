import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundLightColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
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
            'Sign In & \nGrow Your Finance',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // email input
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                // password input
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            )),
                        child: Text(
                          'Sign In',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Create New Account',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
