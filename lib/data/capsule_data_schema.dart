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
    this.name = '',
    this.mainImageFileName,
    this.story = '',
    this.caffeine,
    this.gramsPer10Pack,
    this.cupSize,
    this.flavourProfile,
    this.orgin = '',
    this.price = 0,
  });
}

class CupSize {
  bool ristretto;
  bool espresso;
  bool lungo;
  bool milk;

  CupSize(
      {this.ristretto = false,
      this.espresso = false,
      this.lungo = false,
      this.milk = false});

  CupSize.unFiltered()
      : ristretto = false,
        espresso = false,
        lungo = false,
        milk = false;

  bool get allSet => this.ristretto && this.espresso && this.lungo && this.milk;

  void setAll() {
    ristretto = true;
    espresso = true;
    lungo = true;
    milk = true;
  }
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
  Bold,
  Roasted,
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
