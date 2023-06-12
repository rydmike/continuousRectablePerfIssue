import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
          ),
          useMaterial3: true),
      darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.dark,
            seedColor: Colors.blue,
          ),
          useMaterial3: true),
      home: const MyHomePage(title: 'Performance'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool circle = false;

  @override
  Widget build(BuildContext context) {
    final Color primary = Theme.of(context).colorScheme.primary;
    final Color onPrimary = Theme.of(context).colorScheme.onPrimary;

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          scrolledUnderElevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: onPrimary,
          title: Row(
            children: [
              // const SizedBox(width: 8,),
              ClipPath(
                clipper: const ShapeBorderClipper(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                ),
                child: ColoredBox(
                  color: primary.withOpacity(0.3),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back_rounded)),
                ),
              ),
              const Expanded(
                child: Center(
                  child: Text('Set units'),
                ),
              ),
              const SizedBox(
                width: 56,
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    circle = !circle;
                  });
                },
                icon: const Icon(Icons.star))
          ],
          flexibleSpace: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
              child: Container(
                color: primary.withOpacity(0.7),
              ),
            ),
          ),
          // title: const Text('Units'),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 120,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Temperature',
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: 'Celsius °C',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'Fahrenheit °F',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'Kelvin K',
                                circle: circle,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Speed',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: 'km/h',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'mph',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'kts',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'm/s',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'Beaufort',
                                circle: circle,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Rain',
                          ),
                          const SizedBox(height: 10),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: 'mm',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'cm',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'in',
                                circle: circle,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Pressure',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: 'mbar',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'inHg',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'psi',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'mmHg',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'kPa',
                                circle: circle,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Distance',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: 'km',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'mi',
                                circle: circle,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Time',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: '12h',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: '24h',
                                circle: circle,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Air Quality',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: 'US - EPA',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'UK Defra',
                                circle: circle,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Air Quality Guidance Sensitivity',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: 'General population',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'At risk population',
                                circle: circle,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Temperature',
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: 'Celsius °C',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'Fahrenheit °F',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'Kelvin K',
                                circle: circle,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Speed',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: 'km/h',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'mph',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'kts',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'm/s',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'Beaufort',
                                circle: circle,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Rain',
                          ),
                          const SizedBox(height: 10),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: 'mm',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'cm',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'in',
                                circle: circle,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Pressure',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: 'mbar',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'inHg',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'psi',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'mmHg',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'kPa',
                                circle: circle,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Distance',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: 'km',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'mi',
                                circle: circle,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Time',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: '12h',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: '24h',
                                circle: circle,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Air Quality',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: 'US - EPA',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'UK Defra',
                                circle: circle,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Air Quality Guidance Sensitivity',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: [
                              _SingleOption(
                                text: 'General population',
                                circle: circle,
                              ),
                              _SingleOption(
                                text: 'At risk population',
                                circle: circle,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}

class _SingleOption extends StatelessWidget {
  final String text;
  final bool circle;

  const _SingleOption({
    Key? key,
    required this.text,
    required this.circle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: () {},
        style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            shape: circle
                ? const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32)))
                : const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
        child: Text(text));
  }
}
