import 'package:flippy_app/components/components.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _controller = PageController();

  final imagePaths = [
    {
      'path': 'assets/welcome_item.png',
      'header': 'Choose Item Online',
      'fit': BoxFit.cover
    },
    {
      'path': 'assets/welcome_payment.png',
      'header': 'Payment Online',
      'fit': BoxFit.cover
    },
    {
      'path': 'assets/welcome_order.png',
      'header': 'Get Your Order',
      'fit': BoxFit.contain
    },
  ];

  int _currentPage = 0;

  bool _lastPage = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page?.toInt() ?? 0;
        _lastPage = _currentPage == imagePaths.length - 1;
      });
    });
  }

  void nextPage() {
    _controller.jumpToPage(_currentPage.toInt() + 1);
  }

  void skip() {
    _controller.jumpToPage(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppHeader(),
            const SizedBox(height: 10),
            SizedBox(
                height: 420,
                child: PageView(
                  controller: _controller,
                  children: List.of(imagePaths)
                      .map((image) => _getPage(image))
                      .toList(),
                )),
            const SizedBox(
                width: 230,
                child: Text(
                  "Plan your trip, choose your destination. Pick the best place for your holiday.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(128, 17, 17, 17)),
                )),
            const SizedBox(height: 50),
            Container(
                child: _lastPage
                    ? AppButton(
                        title: "Get Started",
                        onTap: () {
                          Navigator.pushNamed(context, "/login-register");
                        })
                    : _getScroll())
          ],
        ),
      ),
    ));
  }

  Widget _getPage(Map<String, Object> imagePath) {
    return Column(
      children: [
        SizedBox(
            height: 333,
            child: Image.asset(
              imagePath['path'].toString(),
              fit: imagePath['fit'] as BoxFit,
            )),
        const SizedBox(
          height: 50,
        ),
        Text(
          imagePath['header'].toString(),
          style: const TextStyle(
              fontSize: 22, color: Color.fromARGB(255, 17, 17, 17)),
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
              onPressed: skip,
              child: const Text("SKIP",
                  style: TextStyle(color: Color(0xFF111111))),
            ),
            Row(
              children: List.of([0, 1, 2]).map((index) {
                return Container(
                    height: 10,
                    width: 10,
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == _currentPage
                            ? const Color.fromARGB(255, 39, 55, 115)
                            : const Color.fromARGB(76, 39, 55, 115)));
              }).toList(),
            ),
            MaterialButton(
              onPressed: nextPage,
              child: const Text("NEXT",
                  style: TextStyle(color: Color(0xFF273773))),
            )
          ],
        ));
  }
}
