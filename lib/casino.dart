import 'package:casino_tp/enums/images.dart';
import 'package:casino_tp/widgets/gameRoll.dart';
import 'package:flutter/material.dart';

class Casino extends StatefulWidget {
  const Casino({super.key, required this.title});

  final String title;

  @override
  State<Casino> createState() => _CasinoState();
}

class _CasinoState extends State<Casino> {

  AssetImage _firstImage = AssetImage(getAssetPath(Images.seven));
  AssetImage _secondImage = AssetImage(getAssetPath(Images.seven));
  AssetImage _thirdImage = AssetImage(getAssetPath(Images.seven));

  bool _isJackpot = false;
  bool _isJackpotSeven = false;

  void play() {
    setState(() {
      _firstImage = AssetImage(getRandomAssetPath());
      _secondImage = AssetImage(getRandomAssetPath());
      _thirdImage = AssetImage(getRandomAssetPath());

      if (_firstImage.assetName == _secondImage.assetName &&
          _secondImage.assetName == _thirdImage.assetName) {
        _isJackpot = true;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Jackpot !'))
        );

        if (_firstImage.assetName == 'img/seven.png') {
          _isJackpotSeven = true;
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Seven of a Kind Jackpot !'))
          );
        }
      } else {
        _isJackpot = false;
        _isJackpotSeven = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GameRoll(
          firstImage: _firstImage,
          secondImage: _secondImage,
          thirdImage: _thirdImage,
          onPlay: play,
          isJackpot: _isJackpot,
          isJackpotSeven: _isJackpotSeven,
      ),
    );
  }
}
