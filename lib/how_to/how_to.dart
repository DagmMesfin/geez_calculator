import 'package:flutter/material.dart';

class HowTo extends StatelessWidget {
  final String eth = 'Ethiopic';
  final String nor = 'Normalic';
  final String tit = 'Titlic';
  const HowTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ስለ አጠቃቀሙ",
          style: TextStyle(fontFamily: tit, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Column(
            children: [
              Text(
                'የግእዝ ካልኩሌተር አጠቃቀም',
                style: TextStyle(fontSize: 25, fontFamily: eth),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'በዋናነት ይሄ የግእዝ ካልኩሌተር ለመጠቀም እንደመደበኛው ካልኩሌተር ቁጥሩን በአግባብ በመጻፍ እና አግባብ ባለው ስሌት ምልክት በመጠቀም የፈለጉትን ውጤት በግእዝ ቁጥር ማውጣት ይችላል። ግን ይሄንን ሲያደርጉ:',
                style: TextStyle(fontFamily: 'Nyala', fontSize: 18),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '1. አንድ ስሌት ብቻ ነው መጠቀም የሚችሉት፤',
                      style: TextStyle(fontFamily: 'Nyala', fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '2. የሚጽፉትን የግእዝ ቁጥር በትክክል እንደጻፉ ማረጋገጥ ይጠበቅባችኋል፤',
                      style: TextStyle(fontFamily: 'Nyala', fontSize: 18),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'የአኃዝ ቀይሬ አጠቃቀም',
                style: TextStyle(fontSize: 25, fontFamily: eth),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'ይሄንን አኃዝ ቀይሬ ወደ ግእዝ ቁጥር ወይም ወደ ዓረብ ቁጥር ለመቀየር አይነተኛ የሆነ መተግበርያ ነው። ወደ ግእዝ ቁጥር ለመቀየር ምንም ባያስቸግርም ወደ ዓረብ ቁጥር ለመቀየር ግን የግእዝ ቁጥር መጻፍ የሚያስችል ኪይቦርድ ስልኩ ላይ መጫን ያስፈልገዋል።',
                style: TextStyle(fontFamily: 'Nyala', fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
