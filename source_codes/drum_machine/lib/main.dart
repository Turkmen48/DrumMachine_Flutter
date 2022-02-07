import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DrumPage(),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  void oynat(String location) {
    final oynatici = AudioCache();
    oynatici.play("$location.wav");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad("bongo", Colors.blue),
                  ),
                  Expanded(
                    child: buildDrumPad("bip", Colors.redAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad("clap1", Colors.purpleAccent),
                  ),
                  Expanded(
                    child: buildDrumPad("crash", Colors.blueGrey),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad("how", Colors.yellow),
                  ),
                  Expanded(
                    child: buildDrumPad("oobah", Colors.lightBlueAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad("ridebel", Colors.pinkAccent),
                  ),
                  Expanded(
                    child: buildDrumPad("woo", Colors.brown),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton buildDrumPad(String musicname, Color colorname) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
      onPressed: () {
        print("tıklandı");

        oynat(musicname);
      },
      child: Container(
        color: colorname,
      ),
    );
  }
}
