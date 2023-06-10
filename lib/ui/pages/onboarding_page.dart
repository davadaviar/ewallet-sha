import 'package:bank_sha/shared/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundLightColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset('assets/img_onboarding1.png',
                height: 331,
                ),
                Image.asset('assets/img_onboarding2.png',
                height: 331,
                ),Image.asset('assets/img_onboarding3.png',
                height: 331,
                )
              ], 
              options: CarouselOptions(
                height: 331,
                viewportFraction: 1,
                enableInfiniteScroll: false,
              )
            ),
             const SizedBox(
                height: 80,
              ),

            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 24,
                horizontal: 22,
              ),
              decoration: BoxDecoration(
                color: baseWhite,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Text(
                    'Grow Your \nFinancial Today',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    'Our system is helping you to \nachieve a better goal',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: lightBlue,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: lightGrey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: lightGrey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: primaryColor,
                              blurRadius: 150,
                              spreadRadius: 1,
                              offset: const Offset(
                                0,
                                0,
                              ),
                            )
                          ]
                        ),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                            )
                          ),
                          child: Text(
                            'Continue',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}