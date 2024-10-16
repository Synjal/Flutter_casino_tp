import 'package:flutter/material.dart';

class GameRoll extends StatefulWidget {
  const GameRoll({
    super.key,
    required this.firstImage,
    required this.secondImage,
    required this.thirdImage,
    required this.onPlay,
    required this.isJackpot,
    required this.isJackpotSeven,
  });

  final AssetImage firstImage;
  final AssetImage secondImage;
  final AssetImage thirdImage;
  final void Function() onPlay;
  final bool isJackpot;
  final bool isJackpotSeven;

  @override
  State<GameRoll> createState() => _GameRollState();
}

class _GameRollState extends State<GameRoll> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
        Container(
          width: 500,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: widget.isJackpot ? Colors.yellow : Colors.grey,
            border: Border.all(color: Colors.yellow, width: 2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.all(8),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child:
                    Image(
                      height: 80,
                      image: widget.firstImage,
                    ),
                  )
              ),
              Padding(padding: const EdgeInsets.all(8),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child:
                    Image(
                      height: 80,
                      image: widget.secondImage,
                    ),
                  )
              ),Padding(padding: const EdgeInsets.all(8),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child:
                    Image(
                      height: 80,
                      image: widget.thirdImage,
                    ),
                  )
              ),
              ElevatedButton(
                onPressed: () {
                  widget.onPlay();
                },
                child: const Icon(Icons.play_arrow, size: 30),
              ),
            ],
          ),
        ),
    );
  }
}
