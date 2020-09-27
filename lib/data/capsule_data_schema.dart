class CapsuleData {
  final String name;
  final String mainImageFileName;
  final String story;
  final bool caffeine;
  final double gramsPer10Pack;
  final CupSize cupSize;
  final FlavourProfile flavourProfile;
  final String orgin;
  final double price;

  CapsuleData({
    this.name,
    this.mainImageFileName,
    this.story,
    this.caffeine,
    this.gramsPer10Pack,
    this.cupSize,
    this.flavourProfile,
    this.orgin = '',
    this.price = 0,
  });
}

class CupSize {
  final bool ristretto;
  final bool espresso;
  final bool lungo;
  final bool milk;

  CupSize({this.ristretto = false, this.espresso = false, this.lungo = false, this.milk = false});
}

enum AromaticNotes {
  Intense,
  Balanced,
  Flavoured,
  Spicy,
  Fruity,
  Floral,
}
enum AromaticProfile {
  Intense,
  Creamy,
  Rich,
  Distinctive,
  Caramel,
  Flavoured,
  Chocolate,
  Fruity,
  Vibrant,
  DelicatelyToasted,
  Potent,
  Caramelized,
  Flowery,
  Bright,
  FullBodied,
  Spicy,
  Woody,
  Syrupy,
  ExceptionallyIntense,
  Round,
  Smooth,
  ExceptionallyDark,
  Sweet,
  Harmonious,
  Powerful,
  Contrasting,
  Velvety,
  Floral,
  Wild,
  Vanilla,
  Balanced,
  Light,
  Complex,
}

class FlavourProfile {
  final int intensity;
  final int acidity;
  final int roasting;
  final String roastingNotes;
  final int body;
  final int bitterness;
  final List<AromaticNotes> aromaticNotes;
  final List<AromaticProfile> aromaticProfile;
  final String aromaticProfileNotes;

  FlavourProfile({
    this.intensity = -1,
    this.acidity = -1,
    this.roasting = -1,
    this.roastingNotes = '',
    this.body = -1,
    this.bitterness = -1,
    this.aromaticNotes,
    this.aromaticProfile,
    this.aromaticProfileNotes = '',
  });
}
