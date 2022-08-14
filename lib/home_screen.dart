import 'package:flutter/material.dart';
import 'package:one_clock/one_clock.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Analog Clock Example",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            AnalogClockExample(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Digital Clock Example",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            ...DigitalClockExample()
          ],
        ),
      ),
    );
  }
}

Widget AnalogClockExample() {
  return SingleChildScrollView(
    // padding: EdgeInsets.all(7),
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        AnalogClock(
          isLive: false,
          width: 120,
          height: 120,
          datetime: DateTime.now(),
        ),
        const SizedBox(
          width: 10,
        ),
        AnalogClock.dark(
          width: 120,
          height: 120,
          isLive: true,
          datetime: DateTime.now(),
        ),
        const SizedBox(
          width: 10,
        ),
        AnalogClock(
          width: 120,
          height: 120,
          isLive: true,
          decoration:
              BoxDecoration(color: Colors.green[100], shape: BoxShape.circle),
          datetime: DateTime.now(),
        ),
        const SizedBox(
          width: 10,
        ),
        AnalogClock(
          width: 120,
          height: 120,
          isLive: true,
          decoration:
              BoxDecoration(color: Colors.yellow[100], shape: BoxShape.circle),
          datetime: DateTime.now(),
        ),
        const SizedBox(
          width: 10,
        ),
        AnalogClock(
          width: 120,
          height: 120,
          isLive: true,
          showDigitalClock: false,
          decoration:
              BoxDecoration(color: Colors.cyan[100], shape: BoxShape.circle),
          datetime: DateTime.now(),
        ),
        const SizedBox(
          width: 10,
        ),
        AnalogClock(
          width: 120,
          height: 120,
          isLive: true,
          showDigitalClock: false,
          decoration:
              BoxDecoration(color: Colors.red[100], shape: BoxShape.circle),
          datetime: DateTime.now(),
        ),
      ],
    ),
  );
}

List<Widget> DigitalClockExample() {
  return [
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          DigitalClock(
            showSeconds: true,
            datetime: DateTime.now(),
            textScaleFactor: 1.3,
            isLive: true,
          ),
          const SizedBox(
            width: 10,
          ),
          DigitalClock.dark(
            datetime: DateTime.now(),
          ),
          const SizedBox(
            width: 10,
          ),
          DigitalClock.light(
            isLive: true,
            datetime: DateTime.now(),
          ),
          const SizedBox(
            width: 10,
          ),
          DigitalClock(
            datetime: DateTime.now(),
            textScaleFactor: 2,
            showSeconds: false,
            isLive: true,
            decoration: const BoxDecoration(
                color: Colors.cyan,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
          const SizedBox(
            width: 10,
          ),
          DigitalClock(
            datetime: DateTime.now(),
            isLive: true,
            decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
          const SizedBox(
            width: 10,
          ),
          DigitalClock(
            datetime: DateTime.now(),
            isLive: true,
            decoration: const BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
        ],
      ),
    ),
    const SizedBox(
      height: 20,
    ),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          DigitalClock(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            datetime: DateTime.now(),
            isLive: true,
          ),
          DigitalClock.dark(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            datetime: DateTime.now(),
          ),
          DigitalClock.light(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            isLive: true,
            datetime: DateTime.now(),
          )
        ],
      ),
    ),
    const SizedBox(
      height: 20,
    ),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          DigitalClock(
            datetime: DateTime.now(),
            isLive: true,
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.zero)),
          ),
          const SizedBox(
            width: 10,
          ),
          DigitalClock.dark(
            datetime: DateTime.now(),
            decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.zero)),
          ),
          const SizedBox(
            width: 10,
          ),
          DigitalClock.light(
            isLive: true,
            datetime: DateTime.now(),
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.zero)),
          ),
          const SizedBox(
            width: 10,
          ),
          DigitalClock(
            datetime: DateTime.now(),
            isLive: true,
            decoration: const BoxDecoration(
                color: Colors.cyan,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.zero)),
          ),
          const SizedBox(
            width: 10,
          ),
          DigitalClock(
            datetime: DateTime.now(),
            isLive: true,
            decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.zero)),
          ),
          const SizedBox(
            width: 10,
          ),
          DigitalClock(
            datetime: DateTime.now(),
            isLive: true,
            decoration: const BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
        ],
      ),
    ),
    const SizedBox(
      height: 20,
    ),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          DigitalClock(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            datetime: DateTime.now(),
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.zero)),
            isLive: true,
          ),
          DigitalClock.dark(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            datetime: DateTime.now(),
            decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.zero)),
          ),
          DigitalClock.light(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            isLive: true,
            datetime: DateTime.now(),
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.zero)),
          )
        ],
      ),
    ),
  ];
}
