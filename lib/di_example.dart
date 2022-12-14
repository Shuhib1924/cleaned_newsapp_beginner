import 'package:flutter/material.dart';

class Dummy extends StatelessWidget {
  const Dummy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Dummy1 extends StatelessWidget {
  final ButtonInfo buttonInfo;
  const Dummy1({super.key, required this.buttonInfo});

  @override
  Widget build(BuildContext context) {
    return Dummy2(
      buttonInfo: buttonInfo,
    );
  }
}

class Dummy2 extends StatelessWidget {
  final ButtonInfo buttonInfo;
  const Dummy2({super.key, required this.buttonInfo});

  @override
  Widget build(BuildContext context) {
    return Dummy3(
      buttonInfo: buttonInfo,
    );
  }
}

class Dummy3 extends StatelessWidget {
  final ButtonInfo buttonInfo;
  const Dummy3({super.key, required this.buttonInfo});

  @override
  Widget build(BuildContext context) {
    return Dummy4(
      buttonInfo: buttonInfo,
    );
  }
}

class Dummy4 extends StatelessWidget {
  final ButtonInfo buttonInfo;
  const Dummy4({super.key, required this.buttonInfo});

  @override
  Widget build(BuildContext context) {
    return Dummy5(
      buttonInfo: buttonInfo,
    );
  }
}

class Dummy5 extends StatelessWidget {
  final ButtonInfo buttonInfo;
  const Dummy5({super.key, required this.buttonInfo});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        buttonInfo.text,
      ),
    );
  }
}

class ButtonInfo {
  final String text;
  const ButtonInfo(this.text);
}
