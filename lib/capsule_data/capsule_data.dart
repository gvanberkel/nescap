import 'capsule_data_schema.dart';

class Capsules {
  static List<CapsuleData> data;

  static void initialise() {
    data = [
      CapsuleData(
        name: 'Ispirazione Firenze Arpeggio',
        story:
            'Ispirazione Firenze Arpeggio is inspired by Florence, an intellectual hub drawing influences from all the country. This city was not only shaped by its geographical position at the center of the country, but also by its being an intangible center. Florence is the home of the Renaissance – a beating literary, political and artistic heart. From this epicenter, influence flowed, and to it, influencers came. This intellectual city took the best of everything , and Ispirazione Firenze Arpeggio’s roasting style brings these influences together by combining fruity notes traditionally found in the North of Italy with cocoa notes from the South. Ispirazione Firenze Arpeggio is a blend of short and dark roasted Latin American Arabicas that celebrates the inspiration we got from artisans who drew their influences from all across the country. It harmoniously combines the lighter aromatic profiles from the north with the more intense notes from the South. It results in a blend beautifully balanced between bitter and sweet, that delivers a dense, creamy taste with bold roasty and cocoa notes.',
        mainImageFileName: 'arpeggio.png',
        orgin:
            'Ispirazione Firenze Arpeggio is a blend of Latin American Arabicas centered around an inherently malty Costa Rican coffee. All the other coffees used are also Arabica, and that unified taste is as magnetic as Florence during the Renaissance.',
        caffeine: true,
        gramsPer10Pack: 55,
        price: 85,
        cupSize: CupSize(
          ristretto: true,
          espresso: true,
        ),
        flavourProfile: FlavourProfile(
          acidity: 2,
          bitterness: 4,
          body: 4,
          intensity: 9,
          roasting: 4,
          roastingNotes:
              'We crafted Ispirazione Firenze Arpeggio to pay tribute to the culture of this city which draws from the light North to the dark South. An intense roast of the coffee beans develops the distinct characteristics of each of Ispirazione Firenze Arpeggio’s coffees. It may be a blend, but it seeks to let each coffee shine in the cup. The malty aroma turns into the cocoa notes that give this espresso its gravitas',
          aromaticNotes: [AromaticNotes.Intense],
          aromaticProfile: [AromaticProfile.Creamy, AromaticProfile.Intense],
        ),
      ),
      CapsuleData(
        name: 'Ispirazione Firenze Arpeggio Decaffeinato',
        story:
            'Ispirazione Firenze Arpeggio Decaffeinato is inspired by Florence, an intellectual hub drawing influences from all the country. This city was not only shaped by its geographical position at the center of the country, but also by its being an intangible center. Florence is the home of the Renaissance – a beating literary, political and artistic heart. From this epicenter, influence flowed, and to it, influencers came. This intellectual city took the best of everything , and Ispirazione Firenze Arpeggio Decaffeinato’s roasting style brings these influences together by combining fruity notes traditionally found in the North of Italy with cocoa notes from the South. IIspirazione Firenze Arpeggio Decaffeinato is a blend of short and dark roasted decaffeinated Latin American Arabicas that celebrates the inspiration we got from local artisans who drew their influences from all across the country. It harmoniously combines the lighter aromatic profiles from the north with the more intense notes from the south. It results in a decaffeinated blend beautifully balanced between bitter and sweet, that delivers a dense, creamy taste with bold roasty and cocoa notes. The fine grind creates a velvety crema you can’t resist.',
        mainImageFileName: 'arpeggio-decaf.png',
        caffeine: false,
        gramsPer10Pack: 55,
        price: 90,
        cupSize: CupSize(
          ristretto: true,
          espresso: true,
        ),
        flavourProfile: FlavourProfile(
          acidity: 2,
          bitterness: 4,
          body: 4,
          intensity: 9,
          roasting: 4,
          roastingNotes:
              'We crafted Ispirazione Firenze Arpeggio to pay tribute to the culture of this city which draws from the light North to the dark South. An intense roast of the coffee beans develops the distinct characteristics of each of Ispirazione Firenze Arpeggio’s coffees. It may be a blend, but it seeks to let each coffee shine in the cup. The malty aroma turns into the cocoa notes that give this espresso its gravitas',
          aromaticNotes: [AromaticNotes.Intense],
          aromaticProfile: [AromaticProfile.Creamy, AromaticProfile.Intense],
        ),
      ),
      CapsuleData(
        name: 'Capriccio',
        story: '',
        mainImageFileName: 'capriccio.png',
        caffeine: true,
        gramsPer10Pack: 0,
        cupSize: CupSize(
          espresso: true,
          milk: true,
        ),
        flavourProfile: FlavourProfile(
            intensity: 5,
            roastingNotes:
                'We give these component coffees a light roast to preserve that fine acidity that shimmers through the rich cereal notes. Light roasting also develops that rich profile unique to Capriccio.',
            aromaticNotes: [AromaticNotes.Balanced],
            aromaticProfile: [
              AromaticProfile.Rich,
              AromaticProfile.Distinctive,
            ],
            aromaticProfileNotes:
                'Capriccio is a deep and surprisingly refreshing espresso coffee. Can you see the light acidity and fine aromatics dancing through the savory cereal notes? You’ll love Capriccio’s ability to astonish and delight.'),
      ),
      CapsuleData(
        name: 'Caramel Crème Brûlée',
        story:
            'Go ahead and dream a little. We did. The warming flavour of caramel softens the roasted notes of our most rounded and smooth espresso. Creamy notes of caramel, coconut and vanilla dance through BARISTA CREATIONS Caramel Crème Brûlée. The base blend for this Nespresso flavoured coffee consists of some of South America’s finest Arabicas. We blended Brazilian Bourbon beans with washed Colombian coffee and split roasted them to bring them into beautiful harmony. The roast really develops that smooth texture and rounded mouthfeel. It’s into that harmony that we add the caramel flavour to bring this treat to the next level. Try BARISTA CREATIONS Caramel Crème Brûlée as a cappuccino – it’s exceptionally creamy and brings out those notes of vanilla and coconut',
        mainImageFileName: 'caramel.png',
        caffeine: true,
        gramsPer10Pack: 0,
        orgin:
            'The base espresso for the BARISTA CREATIONS flavoured coffees is known for being incredibly round and smooth. In this Arabica coffee blend, you’re in the good company of the finest South American coffees – really rounded and smooth Brazilian Bourbon Arabica beans in harmony with washed Colombian Arabica. The caramel flavour rounds out this blend even more – you get that sweet, creamy taste warming those roasted coffee aromas',
        cupSize: CupSize(
          ristretto: true,
          espresso: true,
          milk: true,
        ),
        flavourProfile: FlavourProfile(
            intensity: 6,
            acidity: 1,
            bitterness: 1,
            body: 2,
            roasting: 2,
            roastingNotes:
                'Split roast, the Brazilian coffee is lightly roasted to keep it smooth and with all its malted cereal notes intact, while the majority of the Colombian coffee beans get a short roast to release all their finer aromatics. A fine grind adds a glimmer of intensity to this harmonious coffee.',
            aromaticProfileNotes: 'Nespresso BARISTA CREATIONS Crème Brûlée is all delicious caramel, vanilla and coconut notes dancing through the malted cereal character of our smoothest espresso. This flavoured coffee capsule is beautifully rounded and as sweet and creamy as crème brûlée.',
            aromaticNotes: [
              AromaticNotes.Flavoured
            ],
            aromaticProfile: [
              AromaticProfile.Caramel,
              AromaticProfile.Flavoured
            ]),
      ),
      CapsuleData(
        name: 'Chiaro',
        story: '',
        mainImageFileName: 'chiaro.png',
        caffeine: true,
        gramsPer10Pack: 48,
        cupSize: CupSize(
          ristretto: true,
          espresso: true,
          milk: true,
        ),
        flavourProfile: FlavourProfile(
          roastingNotes:
              'How you roast a coffee plays a big part in whether or not you hit that ideal harmony of coffee with milk. To develop that sweet and inviting taste of Chiaro, we split roast the blend with both splits roasting at a relatively low temperature and for a moderate amount of time - just long enough to develop the coffees’ inherent sweetness.',
          aromaticProfileNotes:
              'How you roast a coffee plays a big part in whether or not you hit that ideal harmony of coffee with milk. To develop that sweet and inviting taste of Chiaro, we split roast the blend with both splits roasting at a relatively low temperature and for a moderate amount of time - just long enough to develop the coffees’ inherent sweetness.',
        ),
      ),
      CapsuleData(
        name: 'Cocoa Truffle',
        story:
            '''Dark and bitter cocoa flavour meets the malted cereal note of the base espresso in BARISTA CREATIONS Cocoa Truffle. It’s rich and reminiscent of dark chocolate truffles. The base espresso is a blend of the finest South American Arabicas – sweet Bourbon beans from Brazil in harmony with the washed Colombian beans. A split roast brings out the best in each to create an incredibly smooth and rounded espresso – a great match for that dark cocoa flavour. A distinct cocoa note with a touch of almond sweetness and a hint of vanilla – that’s how you’ll recognize a BARISTA CREATIONS Cocoa Truffle cappuccino.''',
        mainImageFileName: 'cocoa.png',
        caffeine: true,
        gramsPer10Pack: 50,
        orgin:
            'The base espresso for the BARISTA CREATIONS flavoured coffees is known for being incredibly round and smooth. In this Arabica coffee blend, you’re in the good company of the finest South American coffees – really rounded and smooth Brazilian Bourbon Arabica beans in harmony with washed Colombian Arabica. The cocoa flavour rounds out this blend even more – you get that familiar rich, velvety taste warming those roasted coffee aromas.',
        cupSize: CupSize(
          ristretto: true,
          espresso: true,
          milk: true,
        ),
        flavourProfile: FlavourProfile(
          intensity: 6,
          acidity: 1,
          bitterness: 1,
          body: 2,
          roasting: 2,
          aromaticNotes: [AromaticNotes.Flavoured],
          aromaticProfile: [
            AromaticProfile.Chocolate,
            AromaticProfile.Flavoured
          ],
          roastingNotes:
              '''Split roast, the Brazilian coffee is lightly roasted to keep it smooth and with all its malted cereal notes intact, while the majority of the Colombian coffee beans get a short roast to release all their finer aromatics. A fine grind adds a glimmer of intensity to this harmonious coffee.''',
        ),
      ),
      CapsuleData(
        name: 'Colombia',
        story: '',
        mainImageFileName: 'colombia.png',
        caffeine: true,
        gramsPer10Pack: 57,
        cupSize: CupSize(
          espresso: true,
          lungo: true,
        ),
        flavourProfile: FlavourProfile(
          intensity: 6,
          roastingNotes: '''
              A short roast at medium temperatures keeps the deep and delicate 
              aromatics of Master Origin Colombia with Late Harvest in balance.
              ''',
          aromaticProfile: [AromaticProfile.Fruity, AromaticProfile.Vibrant],
          aromaticProfileNotes: '''
              Master Origin Colombia with Late Harvest Arabica is both a smooth coffee and a fruity coffee. You’ll taste all the winey red fruit notes of blackcurrant and cranberry that surface when you wait. A bright acidity makes this a vivacious coffee. And it’s in smooth balance with those seductive aromatics.
              ''',
          aromaticNotes: [AromaticNotes.Balanced],
        ),
      ),
      CapsuleData(
        name: 'Corto',
        story: '''

        ''',
        mainImageFileName: 'corto.png',
        caffeine: true,
        gramsPer10Pack: 58,
        cupSize: CupSize(
          ristretto: true,
          espresso: true,
          milk: true,
        ),
        flavourProfile: FlavourProfile(
          intensity: 11,
          bitterness: 5,
          roasting: 5,
          aromaticNotes: [AromaticNotes.Spicy],
          aromaticProfile: [AromaticProfile.Intense],
          roastingNotes:
              '''When you roast any coffee, you have to work at that fine balance of temperature, roast time and bean color. But it’s even more important when you want that coffee to be in ideal harmony with milk. For Corto that means split roasting the coffees for a long time in order to unleash the textures we’re looking for in a Spanish-style coffee. The long roast time – where we wait for the bean to reach a dark, rich roast colour – develops an alluring bitterness and that syrupy, thick body.
            ''',
          aromaticProfileNotes: '''
            For BARISTA CREATIONS Corto taste we took our inspiration from the dark roasts and thick textures created by the expert baristas in Spain, that is why it is easily recognizable by its raw strength and intense, roasty character. Corto can punch through milk with its rich aftertaste, elegant bitterness, and a thick, textured body. With a dash of hot milk and milk froth crowning the cup, you’ll experience Corto in the traditional cortado recipe’s way. When you add milk, its sweetness softens the bitter note the way the moon lightens a dark night. Taste it with cow milk or with your favorite plant-based milk alternative: oat milk will be a perfect pair.
            ''',
        ),
      ),
      CapsuleData(
        name: 'Cosi',
        story: '',
        mainImageFileName: 'cosi.png',
        caffeine: true,
        gramsPer10Pack: 0,
        cupSize: CupSize(
          espresso: true,
          milk: true,
        ),
        flavourProfile: FlavourProfile(
          intensity: 4,
          aromaticNotes: [AromaticNotes.Fruity],
          aromaticProfile: [
            AromaticProfile.Fruity,
            AromaticProfile.DelicatelyToasted
          ],
          roastingNotes: '''
              Our coffee roasters give a light roast and a coarse grind for these Latin American and East African coffees, ensuring that all that heart and soul shines through in this espresso coffee capsule.
              ''',
          aromaticProfileNotes: '''
              In the cup you’ll taste that delicate and balanced pairing of fruity flavors on lightly toasted cereal notes. Cosi’s low in bitterness, roastiness and body - it’s all about the classic aromatics and harmonious balance. Mild cereal and lightly toasted notes enhanced by subtle fruity notes.
              ''',
        ),
      ),
      CapsuleData(
        name: 'Envivo Lungo',
        story: '',
        price: 90,
        mainImageFileName: 'envivo.png',
        caffeine: true,
        gramsPer10Pack: 0,
        cupSize: CupSize(
          lungo: true,
          milk: true,
        ),
        flavourProfile: FlavourProfile(
          intensity: 9,
          roastingNotes: '''
            Nespresso Envivo Lungo’s power comes from its full body, the high caffeine from the Mexican Robusta, but also the roast. It’s an intense coffee. We medium roast the Robusta and dark roast the Indian Arabica.
            ''',
          aromaticProfileNotes: '''
            After Envivo Lungo awakens your senses, you’ll catch the heady tones of aromatic woods, and the notes of caramel and gingerbread as the Washed Robusta and Indian Arabica strike a balance. Starting up with this long black coffee, you’ll feel like you danced into day.
          ''',
          aromaticNotes: [AromaticNotes.Intense],
          aromaticProfile: [
            AromaticProfile.Potent,
            AromaticProfile.Caramelized
          ],
        ),
      ),
      CapsuleData(
        name: 'Ethiopia',
        story: '',
        mainImageFileName: 'ethiopia.png',
        caffeine: true,
        gramsPer10Pack: 0,
        cupSize: CupSize(
          ristretto: false,
          espresso: true,
          lungo: true,
          milk: false,
        ),
        flavourProfile: FlavourProfile(
            intensity: 4,
            roastingNotes: '''
              A light and short roast keeps the more delicate notes alive and singing through the wilder, heavier aromatics of this Ethiopian coffee.
              ''',
            aromaticProfileNotes: '''
            The traditional natural process adds a unique taste - rich, and incredibly aromatic. In Master Origin Ethiopia with dry processed Arabica you’ll catch anything from the warming aroma of ripe fruit to delicate orange blossom notes.
            ''',
            aromaticNotes: [AromaticNotes.Balanced],
            aromaticProfile: [AromaticProfile.Flowery, AromaticProfile.Bright]),
      ),
      CapsuleData(
        name: 'Fortissio Lungo',
        story: '',
        price: 90,
        mainImageFileName: 'fortissio.png',
        caffeine: true,
        gramsPer10Pack: 60,
        cupSize: CupSize(
          ristretto: false,
          espresso: false,
          lungo: true,
          milk: true,
        ),
        flavourProfile: FlavourProfile(
          intensity: 8,
          roastingNotes: '''
            The Monsooned Arabica gets a darker roast to enhance its body and cereal notes. A lighter roast of the washed Colombian coffee means all the classic finer aromatics stay in the balance of Fortissio Lungo. A very particular grind keeps this long black coffee smooth and rounded.
          ''',
          aromaticProfileNotes: '''
            This Arabica coffee blend is as rich and deep as the metallic green Nespresso coffee capsule its housed in. The richness of the Fortissio Lungo pod is all in the balance of the coffee origins, their distinct processing methods, and the distinguished roasts. Sweet cereal and malty toasted notes lie beneath a spray of acidity and a lively bitterness in this Lungo coffee.
            ''',
          aromaticNotes: [AromaticNotes.Intense],
          aromaticProfile: [AromaticProfile.Rich, AromaticProfile.FullBodied],
        ),
      ),
      CapsuleData(
        name: 'India',
        story: '',
        mainImageFileName: 'india.png',
        caffeine: true,
        gramsPer10Pack: 0,
        cupSize: CupSize(
          ristretto: false,
          espresso: true,
          lungo: true,
          milk: false,
        ),
        flavourProfile: FlavourProfile(
            intensity: 11,
            aromaticNotes: [AromaticNotes.Balanced],
            aromaticProfile: [AromaticProfile.Intense, AromaticProfile.Spicy],
            roastingNotes: '''
            We split roast this coffee with a medium and a slightly shorter roast. This coffee roasting process on this Arabica Robusta blend keeps the distinct Arabica and Robusta characteristics alive.
            ''',
            aromaticProfileNotes: '''
            Master Origin India with Robusta Monsoon owes its wild taste to the unique monsooning process. When the coffee beans spend months face to the wind, they develop a distinct woody, savory, spicy taste - as thick and lingering as sea mist. A powerful cup. Using Robusta along with the Arabica coffee really gives it that heavy, syrupy body.
            '''),
      ),
      CapsuleData(
        name: 'Indonesia',
        story: '',
        mainImageFileName: 'indonesia.png',
        caffeine: true,
        gramsPer10Pack: 0,
        cupSize: CupSize(
          ristretto: false,
          espresso: true,
          lungo: true,
          milk: false,
        ),
        flavourProfile: FlavourProfile(
          intensity: 8,
          aromaticNotes: [AromaticNotes.Balanced],
          aromaticProfile: [AromaticProfile.Rich, AromaticProfile.Woody],
          roastingNotes: '''
            The coffee roasting process we use is a split roast method - with a medium and slightly shorter roast.  Split roasting this Sumatra coffee gives a great complexity of aromatic notes in the cup.
            ''',
          aromaticProfileNotes: '''
            It’s the coffee production, the unique coffee farming methods, that make this a classic Indonesia coffee - Master Origin Indonesia wet-hulled Arabica has a thick and rich, velvety body. It’s wild in its cured tobacco notes and you’ll get whiffs of tropical woody aromas.
            ''',
        ),
      ),
      CapsuleData(
        name: 'Ispirazione Palermo Kazaar',
        story: '''
          Ispirazione Palermo Kazaar is inspired by this city’s multicultural character. Sicily once lay on the path of the ancient coffee trade and this crossroads of African and Arabic influence shaped their dark and Robusta-heavy cup profile. Ispirazione Palermo Kazaar captures the African and Arabian dark coffee influences and creates an intensely dark roast from the south that highlights the wild and spicy character of this blend. This coffee will delight you with its exceptional intensity, its audacious bitterness, and those peppery notes leaping out through the thick, syrupy body. The daring intensity of Ispirazione Palermo Kazaar comes from its two unwashed Robustas – a classic way to get a strong cup. A washed Robusta adds a creamy texture. Rounded off with a touch of Latin American Arabica, Ispirazione Palermo Kazaar is split roasted so each coffee’s characteristics can shine through. The Robustas bring audacious bitterness, body, and peppery notes. The Arabica lends sweetness to the blend.
          ''',
        mainImageFileName: 'kazaar.png',
        caffeine: true,
        gramsPer10Pack: 60,
        orgin: '''
            Ispirazione Palermo Kazaar ’s daring intensity comes from blending four distinct coffees – it speaks to the multicultural heritage of Palermo. It’s a coastal city sitting on the edge of three continents, with centuries of Arabian, Byzantine and Spanish cultural influence shaping it. We picked four bold coffees to pay homage to this history. Traditionally you’d look only to unwashed Robusta to bring brute strength. And that’s what you’ll find dominating the coffee blends of southern Italy. But our washed Robusta is a rare find that balances out the Ispirazione Palermo Kazaar coffee pod with its clean taste and creamy texture. These Robusta farmers process their coffee with the same care that washed Arabica farmers do. It helps add that elegant touch to the robustness in Ispirazione Palermo Kazaar . The other coffees are Latin American Arabicas that lend a natural sweetness to Ispirazione Palermo Kazaar.
            ''',
        cupSize: CupSize(
          ristretto: true,
          espresso: true,
        ),
        flavourProfile: FlavourProfile(
            acidity: 1,
            bitterness: 5,
            body: 5,
            intensity: 12,
            roasting: 5,
            roastingNotes: '''
            We split roast the coffees to bring out distinct qualities of each coffee in the Ispirazione Palermo Kazaar blend. Most of the Arabica and Robusta get an intense roast to develop their bitterness and body. We give the unwashed Robusta a shorter and lighter roast to bring out some of the finer aromatic notes. Ispirazione Palermo Kazaar ’s roast style reflects the Arab and African influence you see across southern Italy’s dark and intense coffees.
            ''',
            aromaticProfileNotes: '''
            Did you catch the scent of spice drifting across the waters from Africa? You’ll taste the audacious bitterness and peppery notes leaping out through the thick syrupy body. Together the Arabica and Robusta balance each other out in this espresso. It reflects both the Palermo coastal lifestyle and its rich history. You can sit back in the sun and enjoy your Ispirazione Palermo Kazaar on the terrace, with everything from the food on your plate to the architecture surrounding you whispering the histories of all who’ve passed through Palermo.
            ''',
            aromaticNotes: [
              AromaticNotes.Intense
            ],
            aromaticProfile: [
              AromaticProfile.ExceptionallyIntense,
              AromaticProfile.Syrupy
            ]),
      ),
      CapsuleData(
        name: 'Linizio Lungo',
        story: '',
        price: 90,
        mainImageFileName: 'linizio.png',
        caffeine: true,
        gramsPer10Pack: 55,
        cupSize: CupSize(
          lungo: true,
          milk: true,
        ),
        flavourProfile: FlavourProfile(
          aromaticNotes: [AromaticNotes.Balanced],
          aromaticProfile: [AromaticProfile.Round, AromaticProfile.Smooth],
          intensity: 4,
          roastingNotes: '''
            The Brazilian coffee is lightly roasted - it keeps it smooth and with all the Bourbon variety’s malty cereal notes intact. The washed Colombian coffee beans gets a short roast to release all its finer aromatics. A fine grind adds a glimmer of intensity to this harmonious Lungo coffee.
          ''',
          aromaticProfileNotes: '''
            The Linizio Lungo Arabica coffee blend is remarkably rounded and smooth. You can’t miss the warming notes of malty cereal that shine through this blend of South American sunshine. That’s early joy.
            ''',
        ),
      ),
      CapsuleData(
        name: 'Ispirazione Napoli',
        story: '''
          Ispirazione Napoli is inspired by the intense dark coffee seen in this city. A coffee in Naples is more than just a coffee, it’s a deep-rooted ritual held by the locals. It’s home to the Neapolitan flip coffee pot that turned aristocratic coffee into everyman’s daily habit. It’s home to the suspended coffee tradition of buying two coffees but drinking one and leaving the receipt for the second to be claimed later by someone less well-off. City of grit and beauty, it’s home to short, dark, strong and creamy coffee. We crafted Ispirazione Napoli to honor the city’s rich coffee tradition and the popular bond it creates. It takes real skill to roast to the intense degree they do in Naples. The boldness of Ispirazione Napoli‘s roast endeavors to pay tribute to the expertise of the local roasters from Italy’s coffee capital. We created Ispirazione Napoli to be our darkest and most intense roast to reflect this traditional Neapolitan coffee. We carefully selected beans that could stand up to this degree of roasting. Ispirazione Napoli delivers an extremely thick body, a creamy mouthfeel, and a delicious bitter note that lingers in its aftertaste.
          ''',
        orgin: '''
          We created Ispirazione Napoli as a blend of Robusta from Uganda touched with Arabcia from. We carefully selected coffees that could stand up to the intense roasting this blend calls for – bold coffees that would develop the gritty yet beautiful aromas, tastes, and textures that reflect Naples’ deep-rooted coffee history and traditions.
          ''',
        mainImageFileName: 'napoli.png',
        caffeine: true,
        gramsPer10Pack: 57,
        cupSize: CupSize(
          ristretto: true,
          espresso: true,
        ),
        flavourProfile: FlavourProfile(
          acidity: 1,
          bitterness: 5,
          body: 5,
          intensity: 13,
          roasting: 5,
          aromaticNotes: [AromaticNotes.Intense],
          aromaticProfile: [
            AromaticProfile.ExceptionallyDark,
            AromaticProfile.Creamy
          ],
          roastingNotes: '''
            Ispirazione Napoli’s very dark and intense roast reflects Naples’ traditional dark roasting method. Long ago, you could walk the narrow lanes of Naples and catch the bold aroma of this roast as Neapolitans roast their coffee in the ground floor homes that opened out into the street. During this deep roast, the coffee beans develop gritty yet beautiful characteristics. This is reflected in a thick, velvety body, the creamy mouthfeel, and the delicious bitter note. It takes real skill to roast to such a degree, and the boldness of Ispirazione Napoli’s roast endeavors to be an homage to the skill we’ve long seen in the Italian capital of coffee.
            ''',
          aromaticProfileNotes: '''
            Ispirazione Napoli pays tribute to the short, strong and dark espressos of this southern Italian coastal city – a thing of grit and beauty. It’s a velvety, creamy cup with an extremely thick body and a kiss of pleasant bitterness in its aftertaste.
            ''',
        ),
      ),
      CapsuleData(
        name: 'Nicaragua',
        story: '',
        mainImageFileName: 'nicaragua.png',
        caffeine: true,
        gramsPer10Pack: 0,
        cupSize: CupSize(
          espresso: true,
          lungo: true,
        ),
        flavourProfile: FlavourProfile(
            intensity: 5,
            roastingNotes: '''
            Split roasting Master Origin Nicaragua with a medium and a slightly shorter roast keeps these Nicaraguan coffees in balance.
            ''',
            aromaticProfileNotes: '''
            Master Origin Nicaragua with ‘Black-Honey’ processed Arabica is a nectarous coffee - it has a satiny smooth texture and warming sweet cereal notes. Its distinct sweetness comes from the rare Black-Honey process.
          ''',
            aromaticNotes: [
              AromaticNotes.Balanced
            ],
            aromaticProfile: [
              AromaticProfile.Sweet,
              AromaticProfile.Harmonious
            ]),
      ),
      CapsuleData(
        name: 'Ispirazione Roma',
        story: '''
        Ispirazione Roma is inspired by the different layers of civilization towering up to the present day, where the Modern adds its layer of elegance to the history of the city. The coffee has a popular taste forged by time and the rich southern Italian influences, enlivened by a dash of modern elegance found in its delicate acidity. Roman roasters shrewdly developed their roasting techniques to achieve an aromatic profile that wisely combined the popular ancient taste with a twist of modernity. To mirror their skill, we gave Ispirazione Roma the shortest and lightest roast of our range. It results in a subtle balance between the intensity and depth of the woodsy, cereal notes, and the finesse of the acidity and elegant aromatics - true to Rome’s rich history of contrasts.. A shot of this Intenso coffee and you’re headed straight into a virtual Roman holiday.
          ''',
        mainImageFileName: 'roma.png',
        caffeine: true,
        gramsPer10Pack: 50,
        orgin: '''
        To hit the complexity of a classic Roman espresso requires starting with the right blend. The magnetic complexity of a Roman roast comes from its signature 70/30 blend of Arabica and Robusta. Inspired by this style, we crafted Ispirazione Roma to be our coffee with the most finesse. We chose a natural Arabica and Robusta from Brazil to give Ispirazione Roma its deep base. Adding a high-grown washed Arabica coffee from Ixhuatlan in Mexico provides a flourish of acidity and delicate green fruit aromatics. This Mexican Arabica grows in rich and fertile volcanic soils, and it’s processed so carefully - the farmers dry the coffee on what they call ‘raised drying beds’ to protect it from the rains. You can taste the results in the cup. The excellence of these coffees – and the complexity of the blend – are an homage to the beautiful story of ancient tradition and modern elegance that you find in Rome.
        ''',
        cupSize: CupSize(
          ristretto: true,
          espresso: true,
        ),
        flavourProfile: FlavourProfile(
          acidity: 4,
          bitterness: 4,
          body: 3,
          intensity: 8,
          roasting: 3,
          roastingNotes: '''
          When in Rome, your sugar-laced bold and dark espresso with its foamy head of hazelnut-hued crema will taste as strong as the Roman Empire in its heyday. The Romans like their espresso served scalding hot and drunk in 30 seconds, and deeply dark. But we wanted to pay tribute to the chicness of modern Rome, and so we gave Ispirazione Roma a subtle light roast. It balances the intensity and deep flavor of the coffee with that hint of acidity that gives Ispirazione Roma its elegance. A fine grind preserves the coffees’ aromatic finesse. It helps keep Ispirazione Roma strong yet mild – true to Rome’s rich history of contrasts.
          ''',
          aromaticProfileNotes: '''
          From the days of Ancient Rome, a great many cultures passed through this metropolis. Different layers of civilization towering up to the present day when Modern Rome adds its layer of elegance to the rich history of the city. Ispirazione Roma, too, is beautifully complex. There’s a subtle balance between the strength of the roastiness, the depth of the woodsy, cereal notes, and the finesse of the acidity and elegant aromatics. Ispirazione Roma is the ideal coffee if you’re after a bold yet graceful espresso – it’s a classic taste crowned with elegance.
          ''',
          aromaticNotes: [AromaticNotes.Intense],
          aromaticProfile: [AromaticProfile.Bold, AromaticProfile.Woody],
        ),
      ),
      CapsuleData(
        name: 'Ispirazione Ristretto Italiano',
        story: '''
          Inspired by the ambassador of all Italian coffees, we chose not to imitate but to roast our own version. The ristretto is the essence of Italy’s iconic coffee culture. It’s not reflective of any one city – it’s Italy. It’s the fashion, the art, the cuisine – it’s the consistent elegance and excellence of Italy as a whole. Inspired by this ambassador of all Italian coffees, we chose not to imitate but to roast our own version. Ispirazione Ristretto Italiano is a blend of diverse Arabica and Robustas – a contrasting bouquet from around the world – together they recreate the iconic Italian taste. Ispirazione Ristretto Italiano is a medium-dark roast. In one short, sharp sip, this blend reveals all its intensity and complexity of aromas. It’s a roasty and intense coffee accented by fruity notes and a hint of acidity dancing through. It’s a profile worthy of an ambassador – a coffee that explains Italians’ passion for coffee and makes sense of why it’s ingrained in daily life.
          ''',
        mainImageFileName: 'ristretto.png',
        caffeine: true,
        gramsPer10Pack: 57,
        orgin: '''
        Italians say coffee is all about the four Ms of miscela, macinazione, macchina, and mano. Crafting Ispirazione Ristretto Italiano with respect for this Italian classic begins with the blend – the miscela. Ispirazione Ristretto Italiano is a sophisticated recipe of coffees - both Arabica and Robusta - that each lends its distinct personality to create this iconic Italian taste. We crafted it to reflect the elegance and excellence of Italian culture and coffee. On top of a neutral base of Brazilian Arabica comes a dash of Robusta from South India. It adds a kick to Ispirazione Ristretto Italiano. The best of South American and East African Arabicas add a hint of a crisp fruit note to the Ristretto Italiano.
        ''',
        cupSize: CupSize(
          ristretto: true,
          espresso: true,
        ),
        flavourProfile: FlavourProfile(
          acidity: 3,
          bitterness: 4,
          body: 4,
          intensity: 10,
          roasting: 4,
          roastingNotes: '''
            Split roasting means you can taste what each coffee brings to the cup. The long-roasted Robusta coffee gives Ispirazione Ristretto Italiano its body, its roastiness, and its cocoa bitterness. Putting the Arabica coffees through a quick roast keeps their bright acidity and fruity notes alive and gives Ispirazione Ristretto Italiano more in the cup. We celebrate Italy’s rich history of master blenders and roasters in Ispirazione Ristretto Italiano.
          ''',
          aromaticProfileNotes: '''
            A roasty and intense coffee but with fruity notes and a hint of acidity dancing through the blend – Ispirazione Ristretto Italiano is mysterious and magnetic in its complexity. It’s a profile worthy of an ambassador – a coffee that explains Italians’ passion for coffee and makes sense of why it’s ingrained in daily life. Extracted to the classic 25 ml, you’ll soon see how right the Italians are – this drop of deliciousness shows how less can truly be more.
          ''',
          aromaticNotes: [AromaticNotes.Intense],
          aromaticProfile: [
            AromaticProfile.Powerful,
            AromaticProfile.Contrasting
          ],
        ),
      ),
      CapsuleData(
        name: 'Ispirazione Ristretto Italiano Decaffeinato',
        story: '''
          Inspired by the ambassador of all Italian coffees, we chose not to imitate but to roast our own version. The ristretto is the essence of Italy’s iconic coffee culture. It’s not reflective of any one city – it’s Italy. It’s the fashion, the art, the cuisine – it’s the consistent elegance and excellence of Italy as a whole. Inspired by this ambassador of all Italian coffees, we chose not to imitate but to roast our own version. Ispirazione Ristretto Italiano Decaffeinato is our classic with two twists. Just as with Ispirazione Ristretto Italiano Decaffeinato is a blend of diverse Arabica and Robustas – a contrasting bouquet from around the world – together they recreate the iconic Italian taste – even after decaffeination. Ispirazione Ristretto Italiano Decaffeinato is a medium-dark roast. In one short, sharp sip, this blend reveals all its intensity and complexity of aromas. It’s a roasty and intense coffee accented by fruity notes and a hint of acidity dancing through. It’s a profile worthy of an ambassador – a coffee that explains Italians’ passion for coffee and makes sense of why it’s ingrained in daily life.
          ''',
        price: 90,
        mainImageFileName: 'ristretto-decaf.png',
        caffeine: false,
        gramsPer10Pack: 57,
        orgin: '''
          Italians say coffee is all about the four Ms of miscela, macinazione, macchina, and mano. Crafting Ispirazione Ristretto Italiano Decaffeinato with respect for this Italian classic begins with the blend – the miscela. Nespresso Ristretto Decaffeinato is a sophisticated recipe of decaffeinated coffees - both Arabica and Robusta - that each lends its distinct personality to create this iconic Italian taste. We crafted it to reflect the elegance and excellence of Italian culture and coffee. On top of a neutral base of Brazilian Arabica comes a dash of Robusta from South India. It adds a kick to make Ispirazione Ristretto Italiano Decaffeinato our most intense tasting decaf coffee pod. The best of South American and East African Arabicas add a hint of a crisp fruit note to Ispirazione Ristretto Italiano Decaffeinato.
          ''',
        cupSize: CupSize(
          ristretto: true,
          espresso: true,
        ),
        flavourProfile: FlavourProfile(
          acidity: 3,
          bitterness: 4,
          body: 4,
          intensity: 10,
          roasting: 4,
          roastingNotes: '''
            Slow split roasts of these decaffeinated Arabica and Robusta coffees develop all the aromatics and give Ispirazione Ristretto Italiano Decaffeinato its rich, roasted taste. The Italian barista’s second M is the macinazione – a fine grind helps create that iconic Italian taste – it’s intense and profoundly hefty on your tongue. We celebrate Italy’s rich history of master blenders and roasters in Ispirazione Ristretto Italiano Decaffeinato.
          ''',
          aromaticProfileNotes: '''
            Ispirazione Ristretto Italiano Decaffeinato - like the original Ispirazione Ristretto Italiano pod - is boldly roasty but balanced out by soft cocoa notes. You may catch some of the subtle acidity and fruity notes that make this Nespresso Decaf capsule so mysteriously complex. It’s a profile worthy of an ambassador – a coffee that explains Italians’ passion for coffee and makes sense of why it’s ingrained in daily life. Extracted to the classic 25 ml, you’ll soon see how right the Italians are – this drop of deliciousness shows how less can truly be more.
          ''',
          aromaticNotes: [AromaticNotes.Intense],
          aromaticProfile: [
            AromaticProfile.Powerful,
            AromaticProfile.Contrasting
          ],
        ),
      ),
      CapsuleData(
        name: 'Aged Sumatra',
        story: '''
          High up around Gayo Mountain, in the Aceh province of the island of Sumatra, the farmers practice the giling basah method of processing coffee, much as they do across Indonesia. They remove both the coffee cherry’s fruit flesh and parchment to leave the naked bean to dry. But then these Aceh farmers add a meticulous twist. Over 3-5 years the warehoused beans, stacked in breathable jute bags, alternately moisten and dry with nature’s rhythms. These craftsmen take great care to continuously re-bag the coffee beans to ensure even drying. The coupling of Indonesia’s giling basah method with the meticulous aging over several years develops this coffee’s precious profile. Master Origin Aged Sumatra is woody and spicy in character and has an unmistakably smooth and velvety mouthfeel. The coffee hums with elegantly complex cocoa and sweet caramel notes.
        ''',
        mainImageFileName: 'sumatra.png',
        caffeine: true,
        gramsPer10Pack: 55,
        cupSize: CupSize(
          espresso: true,
          lungo: true,
        ),
        orgin: '''
          There’s a precious process behind the spicy, woody and cocoa character of Aged Sumatra, and it’s the fruit of the craftsman’s care that began years ago. It begins with Indonesia’s signature giling basah method. The beans are then carefully aged over more than three years – until they deliver an unforgettable cup reflecting nature’s rhythms.
        ''',
        flavourProfile: FlavourProfile(
            acidity: 1,
            bitterness: 3,
            body: 3,
            intensity: 7,
            roasting: 4,
            roastingNotes: '''
              This single-origin coffee is roasted utilizing the split-roast technique: the first split is roasted to a dark degree to enhance body, complexity and to balance with the wild notes that come from the natural (dry) process. The second split is roasted more lightly, reaching a medium-dark degree that allows us to explore the tropical fruit character while still preserving the round mouthfeel and general intensity.
            ''',
            aromaticProfileNotes: '''
              The coupling of Indonesia’s giling basah method with the meticulous aging over several years develops this coffee’s precious profile. Aged Sumatra is distinctly woody and spicy with a roasted character and complex notes of cocoa and tobacco.
            ''',
            aromaticProfile: [AromaticProfile.Velvety, AromaticProfile.Woody]),
      ),
      CapsuleData(
        name: 'Amaha Awe Uganda',
        story: '''
          REGAINED QUALITY AND HOPE
          REVIVING ORIGINS is our long-term program in which we partner with farmers to restore coffee regions.
          For centuries, the altitude and fertile soils of Uganda’s Rwenzori mountains made for exceptional coffee farming. But it’s a dying practice here. Together with our partners, we started our long-term REVIVING ORIGINS program in 2018, joining with over 2,000 smallholder farmers to increase the quality and yield of their coffee. We work together to develop good farming practices that lie behind full harvests of great coffee, and lead to improved livelihoods.
        ''',
        orgin: '''
          The Rwenzori Mountains - mountains of the moon - stretch for 120km along the western Uganda. The glaciers and snow-capped peaks provide steady water sources to complement the abundant rainfall that nourishes the fertile soils. High above the 1200m mark grows a rare, yet almost forgotten coffee. Its unique terroir is complemented by the shade and nutrients provided by banana trees, creating a true arabica dreamland. However, the isolation and years of neglect were clear in the cup.
        ''',
        mainImageFileName: 'uganda.png',
        caffeine: true,
        gramsPer10Pack: 0,
        cupSize: CupSize(
          espresso: true,
          lungo: true,
        ),
        flavourProfile: FlavourProfile(
          acidity: 2,
          bitterness: 4,
          body: 4,
          intensity: 8,
          roasting: 4,
          roastingNotes: '''
            This single-origin coffee is roasted utilizing the split-roast technique: the first split is roasted to a dark degree to enhance body, complexity and to balance with the wild notes that come from the natural (dry) process. The second split is roasted more lightly, reaching a medium-dark degree that allows us to explore the tropical fruit character while still preserving the round mouthfeel and general intensity
          ''',
          aromaticProfileNotes: '''
            AMAHA awe UGANDA coffee stands out in particular as a rich and vivid arabica with a wild character and floral notes.
          ''',
          aromaticNotes: [AromaticNotes.Floral],
          aromaticProfile: [AromaticProfile.Floral, AromaticProfile.Wild],
        ),
      ),
      CapsuleData(
        name: 'Vanilla',
        story:
            'It’s in sweet harmony that BARISTA CREATIONS Vanilla Eclair flavour blends into a round, smooth Latin American Arabica espresso. The base blend of Brazilian and Colombian Arabicas is known for its smooth taste and malted cereal notes – a real classic roasted coffee aroma. BARISTA CREATIONS Vanilla Eclair plays into that full flavour with its own richness. The vanilla flavour brings a velvety layer to the taste of this Nespresso flavoured coffee. If you dare the decadence, try it as a cappuccino and taste sweet almond notes dancing through the creamy custard taste.',
        mainImageFileName: 'vanilla.png',
        caffeine: true,
        gramsPer10Pack: 0,
        orgin: '''
          The base espresso for the BARISTA CREATIONS flavoured coffees is known for being round and smooth. In this Arabica coffee blend, you’re in the good company of the finest South American coffees – really rounded and smooth Brazilian Bourbon Arabica beans in harmony with washed Colombian Arabica. The vanilla flavour mellows out this blend even more – you get that familiar rich, velvety taste warming those roasted coffee aromas.
        ''',
        cupSize: CupSize(
          ristretto: true,
          espresso: true,
          milk: true,
        ),
        flavourProfile: FlavourProfile(
          intensity: 6,
          acidity: 1,
          bitterness: 1,
          body: 2,
          roasting: 2,
          roastingNotes: '''
              Split roast, the Brazilian coffee is lightly roasted to keep it smooth and with all its malted cereal notes intact, while the majority of the Colombian coffee beans get a short roast to release all their finer aromatics. A fine grind adds a glimmer of intensity to this harmonious coffee.
            ''',
          aromaticProfileNotes: '''
              Warming vanilla on a base of malted cereal – that’s Nespresso BARISTA CREATIONS Vanilla Éclair. This flavoured coffee capsule is round and smooth with a silky mouthfeel that may remind you of vanilla eclairs.
            ''',
          aromaticNotes: [AromaticNotes.Flavoured],
          aromaticProfile: [AromaticProfile.Vanilla, AromaticProfile.Flavoured],
        ),
      ),
      CapsuleData(
        name: 'Ispirazione Venezia',
        story:
            'Ispirazione Venezia gets its inspiration from the master blending of Venetian roasters once at the crossroads of two civilizations. Ispirazione Venezia celebrates the longest local coffee tradition of Italy with a roast that combines the intense notes of the Ottoman influence and the highly aromatic European coffee profiles. These influences arrived with the Venetian traders who led the way in importing coffee to Italy. The city was a bridge for the Ottoman culture, and soon the port bustled with master blenders and roasters. Over the centuries, Venetians roasters honed their craft, passing down the savoir-faire through the generations. To reflect this inherited know-how of Venetians roasters to combine intense and aromatic coffees in symphonic harmony, we gave Ispirazione Venezia the longest roast of the range. It harmonizes all the diverse elements of its Latin American Arabicas – a hint of fruity and floral aromas, the distinct cereal fragrance, and those luxurious notes of sweet caramel. When you add milk to this full-bodied espresso, it adds to the rounded smoothness and subtle sweetness of Ispirazione Venezia.',
        mainImageFileName: 'venezia.png',
        caffeine: true,
        gramsPer10Pack: 56,
        cupSize: CupSize(
          ristretto: true,
          espresso: true,
        ),
        orgin: '''
          Coffee first came to Italy through the port of Venice. The Venetians developed a finely tuned ability to know their green, unroasted coffee beans and became master blenders. It wasn’t long before Italy’s first coffee shops and coffee houses sprung up here – many with their own roasters serving up their own blends. We wanted to honor this distinct heritage by crafting the Ispirazione Venezia blend to reflect this creativity and know-how. One of Italy’s biggest coffee imports is Brazilian Arabica, and so our experts began here. We blended in reputable, high-grown Arabicas from Central and South America with malty and fruit profiles that develop beautifully during roasting. We chose them because they bring the delicate aromas and rounded taste northern Italian coffee is known for.
        ''',
        flavourProfile: FlavourProfile(
          acidity: 1,
          bitterness: 3,
          body: 3,
          intensity: 8,
          roasting: 4,
          aromaticNotes: [AromaticNotes.Balanced],
          aromaticProfile: [
            AromaticProfile.Harmonious,
            AromaticProfile.Balanced
          ],
          aromaticProfileNotes: '''
            Ispirazione Venezia is a mellow, rounded and delicately aromatic coffee that will remind you of coffee beans fresh out of the roaster – taking you back in time to the early days of Italy’s coffee trade. Its lighter roast keeps the delicate aromas intensely present while developing a thick body. In Venezia you can’t miss the distinct cereal fragrance and those notes of sweet caramel that we all find so reassuring.
          ''',
          roastingNotes: '''
            This northern trade city is not just skilled in blending, but in roasting too. The coffee roasting tends to be lighter in the north of the country. That’s why we gave the coffees in Ispirazione Venezia a medium roast that lands lighter than what you’ll find in the south but is still remaining dark enough. It gives Ispirazione Venezia that rounded mouthfeel and mellowed acidity with just a hint of bitterness.
          ''',
        ),
      ),
      CapsuleData(
        name: 'Vivalto Lungo Decaffeinato',
        story: '',
        mainImageFileName: 'vivalto-decaf.png',
        caffeine: false,
        price: 100,
        gramsPer10Pack: 0,
        cupSize: CupSize(
          lungo: true,
          milk: true,
        ),
        flavourProfile: FlavourProfile(
            intensity: 4,
            roastingNotes:
                '''We roast the coffees separately - it keeps that complexity and balance at the forefront of Nespresso Vivalto Lungo Decaffeinato. A shorter, lighter roast on the Ethiopian and Colombian coffee beans preserves their finer aromatics. A darker and longer roast of the remaining coffee develops the pleasant bitterness and brings the rich roastiness.
          ''',
            aromaticProfileNotes: '''
            Roasted and floral notes dance through Vivalto Lungo Decaffeinato just as in the original Vivalto Lungo. Sweet cereal and light woody notes bring complexity to this irresistible decaf coffee.
          ''',
            aromaticNotes: [
              AromaticNotes.Fruity
            ],
            aromaticProfile: [
              AromaticProfile.Complex,
              AromaticProfile.Balanced
            ]),
      ),
      CapsuleData(
        name: 'Vivalto Lungo',
        story: '',
        mainImageFileName: 'vivalto.png',
        caffeine: true,
        price: 95,
        gramsPer10Pack: 0,
        cupSize: CupSize(
          lungo: true,
          milk: true,
        ),
        flavourProfile: FlavourProfile(
            intensity: 4,
            roastingNotes: '''
            Short, dark roasting the Brazil develops Vivalto Lungo’s classic roastiness. A lighter roast on the washed coffees holds onto their finer aromatics.
          ''',
            aromaticProfileNotes: '''
            The blue Nespresso coffee pod - Vivalto Lungo - is a seductively roasty coffee - but dancing through those toasted cereal notes you’ll taste the bright florals in beautiful balance.
          ''',
            aromaticNotes: [
              AromaticNotes.Fruity
            ],
            aromaticProfile: [
              AromaticProfile.Complex,
              AromaticProfile.Balanced
            ]),
      ),
      CapsuleData(
        name: 'Volluto Decaffeinato',
        story: '',
        mainImageFileName: 'volluto-decaf.png',
        caffeine: false,
        price: 90,
        gramsPer10Pack: 0,
        cupSize: CupSize(
          espresso: true,
          milk: true,
        ),
        flavourProfile: FlavourProfile(
          intensity: 4,
          roastingNotes: '''
           Volluto Decaffeinato is split roasted to bring out the unique characteristics of each coffee. A short roast unfolds the sweet biscuit notes of the Brazilian Arabica. The finer fruit aromatics you taste from the Colombian Arabica coffee are developed in its longer light roast.
          ''',
          aromaticProfileNotes: '''
            This Nespresso decaf espresso is sweet and smooth, rich and round, just like Volluto - but without caffeine. The balanced light taste of Volluto Decaffeinato makes for very sunny living.
          ''',
          aromaticNotes: [AromaticNotes.Balanced],
          aromaticProfile: [AromaticProfile.Sweet, AromaticProfile.Light],
        ),
      ),
      CapsuleData(
        name: 'Scuro',
        story: '',
        mainImageFileName: 'scuro.png',
        caffeine: true,
        price: 100,
        gramsPer10Pack: 55,
        cupSize: CupSize(
          milk: true,
          ristretto: true,
          espresso: true,
        ),
        flavourProfile: FlavourProfile(
            intensity: 8,
            roastingNotes:
                '''The art of roasting calls for a fine balance of temperature, roast time and bean color. Getting it just right is key to striking that great harmony of coffee with milk. We tested lots of combinations until we discovered that to get that ideal flavor balance in Scuro with milk, we needed an extremely contrasted split roasting technique. One part of the blend gets a long and dark roast, and the other is roasted much faster and lighter. When you combine the two, the blend develops that special roasty character that goes so well with the sweetness of milk.''',
            aromaticProfileNotes: '''We took our inspiration from the baristas in Melbourne – they are the masters of robust, but exquisitely balanced tastes – their roasting and blending lend an aromatic power poised as the yin to the yang of milk. Our BARISTA CREATIONS Scuro shows you how intense your coffee can get while still staying beautifully in balance with milk. It’s just roasty enough to push through milk, and its delicate sweetness tempers its intensity to make it a compelling intense Cappuccino or Latte Macchiato. Taste it with cow milk or your favorite plant-based milk alternative: oat milk, coconut milk or soya milk.''',
            aromaticNotes: [
              AromaticNotes.Balanced
            ],
            aromaticProfile: [
              AromaticProfile.Roasted,
              AromaticProfile.Balanced
            ]),
      ),
      CapsuleData(
        name: 'Volluto',
        story: '',
        mainImageFileName: 'volluto.png',
        caffeine: true,
        gramsPer10Pack: 0,
        cupSize: CupSize(
          espresso: true,
          milk: true,
        ),
        flavourProfile: FlavourProfile(
          intensity: 4,
          roastingNotes: '''
            Volluto is medium roasted - not too hot, not too long - and given a medium grind to keep it all in harmony. This roast turns the Brazil’s cereal notes to sweet biscuit and keeps the fruity notes of the Colombia alive. The Volluto coffee capsule comes out a rounded and elegantly balanced espresso.
          ''',
          aromaticProfileNotes: '''
            Like a fresh, oven-baked brioche, Nespresso Volluto has an irresistible perfume and comforting sweet biscuit notes. The Nespresso gold capsule’s Colombian coffee brings its fresh red fruit notes that enliven the blend - that’s sunny living.
          ''',
          aromaticNotes: [AromaticNotes.Balanced],
          aromaticProfile: [AromaticProfile.Sweet, AromaticProfile.Light],
        ),
      ),
      CapsuleData(
        name: 'Zimbabwe',
        story:
            'The world almost lost Zimbabwe’s coffee to climate and political issues. But farmers joined Nespresso’s REVIVING ORIGINS program with a plan to bring it back. Working closely with the farming community, bringing expert trainers and establishing sustainable practices will help restore Zimbabwe’s coffee industry in the long term.',
        mainImageFileName: 'zimbabwe.png',
        caffeine: true,
        gramsPer10Pack: 0,
        orgin: '''
          Zimbabwe’s high mountains and cool temperatures make it ideal for growing coffee. Back in the 1990s when the country’s production peaked at around 15’000 tons of coffee, its quality was said to rival Kenyan coffee.
        ''',
        cupSize: CupSize(
          espresso: true,
          lungo: true,
        ),
        flavourProfile: FlavourProfile(
          acidity: 3,
          bitterness: 2,
          body: 3,
          intensity: 5,
          roasting: 2,
          roastingNotes: '''
            TAMUKA mu ZIMBABWE gets a split roast. The first split is light and short – it brings out the sweetness in the coffee. The second split is a dark and long roast – it helps balance out the tastes and aromas and give the coffee its smoothness.
          ''',
          aromaticProfileNotes: '''
            TAMUKA mu ZIMBABWE is bursting with complex fruitiness and a zesty bright acidity. You can catch notes of everything from cranberry to red berries, and currant to grape.
          ''',
          aromaticNotes: [AromaticNotes.Fruity],
          aromaticProfile: [AromaticProfile.Fruity, AromaticProfile.Flowery],
        ),
      ),
    ];
  }
}
