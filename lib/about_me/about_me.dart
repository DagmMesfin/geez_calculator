import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  final String eth = 'Ethiopic';
  final String nor = 'Normalic';
  final String tit = 'Titlic';
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "ስለ እኔ",
            style: TextStyle(fontFamily: tit, fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Column(
              children: [
                Text(
                  'ምስጋና',
                  style: TextStyle(fontSize: 30, fontFamily: eth),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'ሰፍረን ቆጥረን የማንፈጽማቸው የሚታዩትንና የማይታዩትን ፍጥረታትን ለፈጠረና እኔንም ይሄንን መተግበርያ ጀምሬ እንድጨርስ ላደረገኝ እና የጥበብ ሁሉ ባለቤት ልዑል እግዚአብሔርን አመሰግናለሁ።',
                  style: TextStyle(fontFamily: 'Nyala', fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'ከዛም በመቀጠል ከሃሳብ እና ከሞራል ድጋፍ ጀምሮ በተለያዩ ነገሮች እኔን የረዱኝ እና የተረዱኝ እንዲሁም ስወድቅ ያነሱኝ ቤተሰቦቼ ፣ ውድ ጓደኞቼ ፣ መምሕራኖቼ ፣ ብቻ እግዚአብሔር የሰጠኝን ሁሉ አመሰግናለሁኝ።',
                  style: TextStyle(fontFamily: 'Nyala', fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'እኔ ማን ነኝ?',
                  style: TextStyle(fontSize: 30, fontFamily: eth),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'እኔ ዳግም መስፍን እባላላሁ። የተለያዩ ሀገራዊ እና ዓለም አቀፋዊ መተግበሪያዎችህ መስራት እና የተለያዩ ነገሮችን ላይ ምርምር ማድረግ በጣም ያስደስተኛል። ይሄንንም መተግበሪያ እንድሰራ ያነሳሳኝ ነገር እኛ በአሁኑ ሁኔታ ስለ ግእዝ ቁጥሮች ያለንን አናሳ ግንዛቤ ለመቅረፍ ካለኝ ትኩረት እና ፍላጎት ነው።',
                  style: TextStyle(fontFamily: 'Nyala', fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'መገኛ አውታሮች',
                  style: TextStyle(fontSize: 30, fontFamily: eth),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.mail),
                    Text(
                      ': dagmmesfinthedeveloper25@gmail.com',
                      style: TextStyle(fontFamily: 'Nyala', fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.web_rounded),
                    Text(
                      ': https://www.geez.infinityfreeapp.com',
                      style: TextStyle(fontFamily: 'Nyala', fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.facebook),
                    Text(
                      ': Dagm Mesfin',
                      style: TextStyle(fontFamily: 'Nyala', fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
