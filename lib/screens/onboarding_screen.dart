import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmcy_owner/widgets/on_boarding_content.dart';
import 'package:pharmcy_owner/widgets/on_boarding_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPageIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Visibility(
              visible: _currentPageIndex == 2,
              replacement: TextButton(
                onPressed: () {
                  _pageController.animateToPage(
                    2,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInCubic,
                  );
                },
                child: Text(
                  'SKIP',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/bottom_navigation_screen');
                },
                child: Text(
                  'START',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/appbar.png'), fit: BoxFit.fill)),
          )),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
            ),
            Expanded(
              child: PageView(
                physics: BouncingScrollPhysics(),
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int pageIndex) {
                  setState(() {
                    _currentPageIndex = pageIndex;
                  });
                },
                children: const [
                  OnBoardingContent(
                    image: 'image_1',
                    title: 'Post Your Shift',
                    subTitle:
                        'Find the Relief Pharmacist, Assistant or lmmunizer effortlessly, to ensure continuity of care.',
                  ),
                  OnBoardingContent(
                    image: 'image_2',
                    title: 'Plan Your Month',
                    subTitle:
                        'Plan Your Month with Ease and Efficiency Choose the date, location and rate that suits your needs.',
                  ),
                  OnBoardingContent(
                    image: 'image_3',
                    title: 'Know Your Rights & Responsibilities.',
                    subTitle:
                        'With clear Terms and Conditions signed by both parties, we ensure that neither party is exploited. Rest assured that all payments are processed via secure platforms.',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OnBoardingIndicator(
                    isSelected: _currentPageIndex == 0,
                    marginEnd: 8,
                  ),
                  OnBoardingIndicator(
                    isSelected: _currentPageIndex == 1,
                    marginEnd: 8,
                  ),
                  OnBoardingIndicator(
                    isSelected: _currentPageIndex == 2,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFA71D39),
                            minimumSize: Size(35, 35),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6))),
                        onPressed: () {
                          if (_currentPageIndex != 2){
                            _pageController.nextPage(
                                duration: Duration(seconds: 1),
                                curve: Curves.easeInOutBack);}
                          else{
                            Navigator.pushReplacementNamed(context, '/bottom_navigation_screen');
                          }
                        },
                        child: Icon(Icons.arrow_forward),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
