import 'package:flutter/material.dart';
import 'package:flippy_app/components/components.dart';
import 'package:flippy_app/themes/themes.dart';

class SelectLocationPage extends StatefulWidget {
  const SelectLocationPage({super.key});

  @override
  State<SelectLocationPage> createState() => _SelectLocationPageState();
}

class _SelectLocationPageState extends State<SelectLocationPage> {
  final _controller = TextEditingController();
  final _hintText = "Enter Your Location";
  String selectedCountry = "";

  final _countries = List.generate(20, (index) => "Country-$index");

  List<String> _displayCountries = [];

  @override
  void initState() {
    super.initState();

    setState(() {
      _displayCountries = List.of(_countries);
    });

    _controller.addListener(_filterCountries);
  }

  void _filterCountries() {
    final text = _controller.text.toLowerCase();
    final filteredCountries = text.isNotEmpty
        ? _countries.where((c) => c.toLowerCase().contains(text)).toList()
        : List.of(_countries);
    setState(() {
      _displayCountries = filteredCountries;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainGrey,
      appBar: const MainAppBar(title: "Back"),
      body: Column(
        children: [
          AppSearchBar(
            controller: _controller,
            hintText: _hintText,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  color: AppColors.mainGrey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Image.asset("assets/top_right_arrow.png"),
                            const SizedBox(width: 5),
                            Text(
                              "Use Current Location",
                              style: const TextStyle(
                                color: AppColors.mainBlue,
                                fontSize: 12,
                              ).withLato(),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Choose Your Country",
                        style: const TextStyle(
                          fontSize: 22,
                          color: AppColors.mainDark,
                        ).withLato(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: _displayCountries.length,
                    itemBuilder: (context, index) => SearchTile(
                      title: _displayCountries[index],
                      selected: selectedCountry == _displayCountries[index],
                      onTap: () => {
                        setState(
                          () => selectedCountry = _displayCountries[index],
                        ),
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
