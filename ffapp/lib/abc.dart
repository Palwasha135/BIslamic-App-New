import 'package:audioplayers/audioplayers.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/reusable_widgets/toast.dart';

class DuaScreen extends StatefulWidget {
  final String assetImagePath;
  final Homeicon iconData;
  final double containerHeight;
  final double iconSize;
  final path;

  const DuaScreen({
    required this.assetImagePath,
    required this.iconData,
    this.containerHeight = 700.0,
    this.iconSize = 44.0,
    this.path,
    Key? key,
  }) : super(key: key);

  @override
  State<DuaScreen> createState() => _DuaScreenState();
}

class _DuaScreenState extends State<DuaScreen> {
  bool isplay = false;
  bool ispause = false;
  bool startplay = false;

  final player = AudioPlayer();

  @override
  void dispose() {
    player.dispose(); // Dispose of the player when the widget is disposed
    super.dispose();
  }

  void play(String src) async {
    int loopCount = 0;
    bool isStopped = false;
    setState(() {
      isplay = true;
      startplay = true;
    });

    player.setVolume(1);
    await player.play(AssetSource(src));

    player.onPlayerComplete.listen((event) async {
      if (!isStopped && loopCount < 4) {
        loopCount++;

        await player.seek(Duration.zero);
        await player.play(AssetSource(src));
      } else {
        if (!isStopped) {
          isStopped = true;
          player.stop();

          setState(() {
            isplay = false;
            startplay = false;
            ispause = false;
          });
        }
      }
    });
  }

  void stop() async {
    if (isplay || ispause) {
      await player.stop();
      setState(() {
        isplay = false;
        startplay = false;
        ispause = false;
      });
      ToastHelper.showShortToast('Stop');
    }
  }

  void paused() async {
    if (!ispause) {
      await player.pause();
      setState(() {
        isplay = false;
        ispause = true;
      });
      ToastHelper.showShortToast('Paused');
    } else {
      await player.resume();
      setState(() {
        isplay = true;
        ispause = false;
      });
      ToastHelper.showShortToast('Resume');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.containerHeight,
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              widget.assetImagePath,
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Container(
            //height: 210,
            color: const Color(0xFF252266),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        iconSize: 40,
                        onPressed: () {
                          if (!isplay && !ispause) {
                            play(widget.path);
                            ToastHelper.showShortToast('Play');
                          }
                        },
                        icon: AvatarGlow(
                          endRadius: 30,
                          animate: isplay,
                          repeat: true,
                          glowColor: Colors.white,
                          child: const Icon(
                            Icons.volume_up,
                            size: 40,
                            color: Colors.amber,
                          ),
                        )),
                    Visibility(
                      visible: startplay,
                      child: IconButton(
                          iconSize: 40,
                          onPressed: () {
                            paused();
                          },
                          icon: Icon(
                            ispause ? Icons.play_arrow : Icons.pause,
                            color: Colors.amber,
                          )),
                    ),
                    IconButton(
                        iconSize: 40,
                        onPressed: () {
                          stop();
                        },
                        icon: const Icon(
                          Icons.stop,
                          color: Colors.amber,
                        )),
                  ],
                ),
                const Homeicon(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
