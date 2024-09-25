import 'package:flippy_app/themes/themes.dart';
import 'package:flippy_app/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  static const _duration = 500;
  final _controller = PageController();

  final List<WelcomeContent> imagePaths = [
    const WelcomeContent(
        path: 'assets/welcome_item.png',
        header: 'Choose Item Online',
        boxfit: BoxFit.cover),
    const WelcomeContent(
        path: 'assets/welcome_payment.png',
        header: 'Payment Online',
        boxfit: BoxFit.cover),
    const WelcomeContent(
        path: 'assets/welcome_order.png',
        header: 'Get Your Order',
        boxfit: BoxFit.contain)
  ];

  int _currentPage = 0;
  bool _lastPage = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: AppColors.mainGrey,
        statusBarColor: AppColors.mainGrey,
      ),
    );
    return Scaffold(
      backgroundColor: AppColors.mainGrey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              const AppHeader(),
              const SizedBox(height: 10),
              SizedBox(
                height: 420,
                child: PageView.builder(
                  itemCount: imagePaths.length,
                  controller: _controller,
                  onPageChanged: (pageNumber) => {
                    setState(() {
                      _currentPage = pageNumber;
                      _lastPage = _currentPage == imagePaths.length - 1;
                    })
                  },
                  itemBuilder: (context, index) => _getPage(imagePaths[index]),
                ),
              ),
              SizedBox(
                width: 230,
                child: Text(
                  "Plan your trip, choose your destination. Pick the best place for your holiday.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.mainDark.withOpacity(.5),
                  ).withLato(),
                ),
              ),
              const Spacer(),
              Container(
                child: _lastPage
                    ? AppButton(
                        title: "Get Started",
                        onTap: () {
                          Navigator.pushNamed(context, "/login-register");
                        },
                      )
                    : _getScroll(),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }

  Widget _getPage(WelcomeContent content) {
    return Column(
      children: [
        Image.asset(
          height: 350,
          content.path,
          fit: content.boxfit,
        ),
        const Spacer(),
        Text(
          content.header,
          style: const TextStyle(
            fontSize: 22,
            color: AppColors.mainDark,
          ).withLato(),
        ),
      ],
    );
  }

  Widget _getScroll() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            onPressed: () {
              _controller.animateToPage(
                2,
                duration: const Duration(milliseconds: _duration),
                curve: Curves.ease,
              );
            },
            child: Text(
              "SKIP",
              style: const TextStyle(color: AppColors.mainDark).withLato(),
            ),
          ),
          Row(
            children: List.generate(
              imagePaths.length,
              (index) => _getDotIndicator(index == _currentPage),
            ),
          ),
          MaterialButton(
            onPressed: () {
              _controller.nextPage(
                duration: const Duration(milliseconds: _duration),
                curve: Curves.ease,
              );
            },
            child: Text(
              "NEXT",
              style: const TextStyle(color: AppColors.mainBlue).withLato(),
            ),
          )
        ],
      ),
    );
  }

  Widget _getDotIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: _duration),
      height: 10,
      width: 10,
      margin: const EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            isActive ? AppColors.mainBlue : AppColors.mainBlue.withOpacity(0.3),
      ),
    );
  }
}

class WelcomeContent {
  final String path;
  final String header;
  final BoxFit boxfit;
  const WelcomeContent(
      {required this.path, required this.header, required this.boxfit});
}
