import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void audio(int audio_number) {
    final player = AudioCache();
    player.play("note$audio_number.wav");
  }

  Widget tiles({int audio_number, Color tiles_Colour}) {
    return Expanded(
      child: FlatButton(
        color: tiles_Colour,
        onPressed: () {
          audio(audio_number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              tiles(audio_number: 1, tiles_Colour: Colors.red),
              tiles(audio_number: 2, tiles_Colour: Colors.orange),
              tiles(audio_number: 3, tiles_Colour: Colors.yellowAccent),
              tiles(audio_number: 4, tiles_Colour: Colors.green),
              tiles(audio_number: 5, tiles_Colour: Colors.blue),
              tiles(audio_number: 6, tiles_Colour: Colors.indigo),
              tiles(audio_number: 7, tiles_Colour: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
