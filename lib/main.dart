import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void sounds(sound){
      final player = new AudioCache();
      player.play('$sound.m4a');

  }
  void soundsAnimal(sound){
    final player = new AudioCache();
    player.play('$sound.wav');

  }

  buildKey(sound, name) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10, left: 20),
      child: Container(
        width: double.infinity,
        height: 100,
        child: Row(
          children: <Widget>[
            FlatButton(
              onPressed: (){
                sounds(sound);
              },
              child: Image.asset('assets/$sound.png'),
            ),
            Text(name,
            style: TextStyle(

              fontSize: 30,
              ),
            ),
            FlatButton(
              onPressed: (){
                soundsAnimal(sound);
              },
              child: Icon(Icons.volume_up)
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Animals in English',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      ),
                    ),
                  ),
                  buildKey('dog', 'Dog'),
                  buildKey('cat', 'Cat'),
                  buildKey('elefante', 'Elephant'),
                  buildKey('bird', 'Bird'),
                  buildKey('lion', 'Lion'),
                  buildKey('turtle', 'Turtle'),
                  buildKey('fish', 'Fish'),

                ],
            ),
          ),
        ),
      ),
    );
  }
}
