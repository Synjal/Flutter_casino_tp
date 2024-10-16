import 'dart:math';

enum Images {
  bar,
  cherry,
  bell,
  diamond,
  watermelon,
  seven,
  horseshoe
}

String getAssetPath(Images image) {
  switch (image) {
    case Images.bar:
      return "img/bar.png";
    case Images.cherry:
      return "img/cerise.png";
    case Images.bell:
      return "img/cloche.png";
    case Images.diamond:
      return "img/diamant.png";
    case Images.watermelon:
      return "img/pasteque.png";
    case Images.seven:
      return "img/sept.png";
    case Images.horseshoe:
      return "img/fer-a-cheval.png";
    default:
      return "default.png";
  }
}

String getRandomAssetPath() {
  Images randomImage = Images.values[Random().nextInt(Images.values.length)];
  return getAssetPath(randomImage);
}
