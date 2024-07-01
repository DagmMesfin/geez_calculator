import 'package:flutter/material.dart';
import 'package:geez_calculator/converting_fuctions.dart';

class NumConvPage extends StatefulWidget {
  const NumConvPage({Key? key}) : super(key: key);

  @override
  _NumConvPageState createState() => _NumConvPageState();
}

class _NumConvPageState extends State<NumConvPage> {
  final String eth = 'Ethiopic';
  final String nor = 'Normalic';
  final String tit = 'Titlic';
  static final items = ['ወደ ግእዝ ቁጥር', 'ወደ ዓረብ ቁጥር'];
  String value = items.first, numGeez1 = '', numGeez2 = '';
  int numArab1 = 0, numArab2 = 0;
  int indexStack = 0;

  @override
  Widget build(BuildContext context) {
    final TextEditingController t1 =
        TextEditingController(text: numArab1.toString());
    final TextEditingController t2 = TextEditingController(text: numGeez2);
    return Scaffold(
      appBar: AppBar(
        title: const Text('አኃዝ ቀይሬ'),
        centerTitle: true,
        backgroundColor: Colors.green[600],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            color: Colors.black12,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'አይነት ፡',
                        style: TextStyle(fontFamily: eth, fontSize: 25),
                      )),
                  const SizedBox(
                    height: 10,
                  ),

                  //TODO: Dropdown Button
                  Center(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(14, 6, 14, 14),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: value,
                          iconSize: 36,
                          icon: const Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.black,
                          ),
                          isExpanded: true,
                          items: items.map(buildMenuItem).toList(),
                          onChanged: (value) => setState(() {
                            this.value = value as String;
                            if (value == "ወደ ግእዝ ቁጥር") {
                              indexStack = 0;
                            } else if (value == 'ወደ ዓረብ ቁጥር') {
                              indexStack = 1;
                            }
                          }),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: IndexedStack(
                      index: indexStack,
                      children: [
                        //To Arab
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'ቁጥሩ ፡',
                                style: TextStyle(fontFamily: eth, fontSize: 25),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(14, 6, 14, 14),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                controller: t2,
                                decoration: const InputDecoration(
                                  hintText: 'Write a Geez Numeral...',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(14, 0, 14, 14),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[800],
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        numGeez2 = t2.text;
                                        numArab2 = numConverterToArab(numGeez2);
                                      });
                                    },
                                    child: Text(
                                      'ቀይር',
                                      style: TextStyle(
                                          fontFamily: eth,
                                          fontSize: 25,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'መልሱ ፡',
                              style: TextStyle(
                                  fontFamily: eth,
                                  fontSize: 25,
                                  color: Colors.black87),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '$numArab2',
                              style: TextStyle(
                                  fontFamily: eth,
                                  fontSize: 25,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                        //To Geez
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'ቁጥሩ ፡',
                                style: TextStyle(fontFamily: eth, fontSize: 25),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(14, 6, 14, 14),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: t1,
                                decoration: const InputDecoration(
                                  hintText: 'Write Arabic Number...',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(14, 0, 14, 14),
                                  decoration: BoxDecoration(
                                    color: Colors.green[800],
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        numArab1 = int.parse(t1.text);
                                        numGeez1 = numConverterToGeez(numArab1);
                                      });
                                    },
                                    child: Text(
                                      'ቀይር',
                                      style: TextStyle(
                                          fontFamily: eth,
                                          fontSize: 25,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'መልሱ ፡',
                              style: TextStyle(
                                  fontFamily: eth,
                                  fontSize: 25,
                                  color: Colors.black87),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              numGeez1,
                              style: TextStyle(
                                  fontFamily: eth,
                                  fontSize: 25,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                      ].reversed.toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String e) {
    return DropdownMenuItem(
      value: e,
      child: Text(
        e,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
