import 'package:flutter/material.dart';

String baconText =
    'Bacon ipsum dolor amet kielbasa pig bresaola t-bone hamburger turducken short loin, tri-tip meatloaf tail buffalo sirloin. Drumstick chislic flank jowl, t-bone boudin capicola chicken tri-tip prosciutto. Bacon hamburger meatloaf buffalo. Jerky pork chop tri-tip cow fatback landjaeger sausage corned beef. Beef sirloin capicola hamburger corned beef, ribeye shank picanha pork chuck.Ball tip drumstick ham doner meatloaf cupim filet mignon beef ribs. Pork belly ball tip turducken ham hock capicola, hamburger meatloaf. Tongue cupim ribeye rump burgdoggen, meatloaf salami bacon andouille pork chislic shank drumstick. Burgdoggen shank tongue, ball tip beef ham hock leberkas corned beef hamburger pig cupim buffalo filet mignon chislic. Frankfurter kielbasa ground round porchetta flank.Turducken pastrami pork loin picanha flank,corned beef brisket pork pork chop fatback drumstick capicola burgdoggen sirloin chicken. Sirloin sausage flank tail kevin. Bacon sausage ribeye corned beef prosciutto. Tongue meatball chuck, andouille hamburger chislic shank landjaeger kevin capicola tail tri-tip pastrami.';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                height: 300,
                width: 200,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                baconText,
                style: const TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
