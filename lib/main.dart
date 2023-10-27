import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: IdCard(),
));

class IdCard extends StatefulWidget {
  const IdCard({super.key});

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int workLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body:  Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img_avatar.png'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[700],
            ),

            Text(
              'NAME',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 2.0,
              ),
            ),

            const SizedBox(height: 5.0),

            Text(
              'Shegs George',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.amberAccent[400],
                fontSize: 24.0,
                fontWeight: FontWeight.bold
              ),
            ),

            const SizedBox(height: 30.0),

            Text(
              'CURRENT WORK LEVEL',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 2.0,
              ),
            ),

            const SizedBox(height: 5.0),

            Text(
              '$workLevel',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.amberAccent[400],
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold
              ),
            ),

            const SizedBox(height: 30.0),

            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),

                const SizedBox(width: 10.0),

                Text(
                  'shegsflutter@dev.app',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[400],
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 100.0),

            Center(
              child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      workLevel ++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent[400],
                    minimumSize: const Size(100, 40),
                    maximumSize: const Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.black,
                      ),

                      SizedBox(width: 6.0),

                      Text(
                        'Increase Level',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16.0
                        ),
                      ),
                    ],
                  ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
