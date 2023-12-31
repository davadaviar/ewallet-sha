import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Grow Your \nFinancial Today',
    'Build From \nZero to Freedom',
    'Start Together'
  ];

  List<String> subtitles = [
    'Our system is helping you to \nachieve a better goal',
    'We provide tips for you so that \nyou can adapt easier',
    'We will guide you to where \nyou wanted it too'
  ];

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
                Image.asset(
                  'assets/img_onboarding1.png',
                  height: 200,
                ),
                Image.asset(
                  'assets/img_onboarding2.png',
                  height: 200,
                ),
                Image.asset(
                  'assets/img_onboarding3.png',
                  height: 200,
                )
              ],
              options: CarouselOptions(
                height: 200,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              carouselController: carouselController,
            ),
            const SizedBox(
              height: 50,
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
                  color: baseWhite, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Text(
                    titles[currentIndex],
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    subtitles[currentIndex],
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  currentIndex == 2
                      ? Column(
                          children: [
                            CustomFilledButton(
                              title: 'Get Started',
                              onPressed: () {
                                Navigator.pushNamed(context, '/sign-up');
                              },
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomTextButton(
                              title: 'Sign In',
                              onPressed: () {
                                Navigator.pushNamed(context, '/sign-in');
                              },
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color:
                                    currentIndex == 0 ? lightBlue : lightGrey,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color:
                                    currentIndex == 1 ? lightBlue : lightGrey,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color:
                                    currentIndex == 2 ? lightBlue : lightGrey,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const Spacer(),
                            CustomFilledButton(
                              title: 'Continue',
                              width: 150,
                              onPressed: () {
                                carouselController.nextPage();
                              },
                            ),
                          ],
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
