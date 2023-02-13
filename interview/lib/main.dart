import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: InterviewCard(),
  ));
}

class InterviewCard extends StatelessWidget {
  const InterviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset(
          'two.png',
          height: 100,
          width: 40,
        ),
        
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 9.0,
      ),
      
      body: Column(
        children: [
          Row(
            children: [
              Column(children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('a.png'),
                  radius: 25.0,
                ),
                Column(
                  children: const [
                    Text(
                      "#Defi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      "1355 people",
                      style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 1.0,
                          fontSize: 8.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ]),
              const Divider(
                height: 70.0,
                color: Colors.black54,
              ),
              Column(children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('b.png'),
                  radius: 25.0,
                ),
                Column(
                  children: const [
                    Text(
                      "#NFT",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      "302 people",
                      style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 1.0,
                          fontSize: 8.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ]),
              Column(children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('c.png'),
                  radius: 25.0,
                ),
                Column(
                  children: const [
                    Text(
                      "#sidechama",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      "402 people",
                      style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 1.0,
                          fontSize: 8.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ]),
              Column(children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('d.png'),
                  radius: 25.0,
                ),
                Column(
                  children: const [
                    Text(
                      "#dapp",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      "200 people",
                      style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 1.0,
                          fontSize: 8.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ]),
            ],
          ),
          //Padding(
            //padding: const EdgeInsets.all(8.0),
            Row(
            children: [
              Container(
                   padding : const EdgeInsets.all(7),
                  decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                 ),
                 child: Row(
                  mainAxisSize: MainAxisSize.min,
                   children: [
            Image.asset(
          'Vector.png',
        ),
             const Text("Today's best"),
            
            ],
                 ),
                 ),
           const SizedBox(height: 10.0,),

                   Container(
   padding : const EdgeInsets.all(7),
    decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
     ),
     child: Row(
      mainAxisSize: MainAxisSize.min,
       children: [
Image.asset(
          'v1.png'
        ),
          const Text("My RoundTable"),
        
       ]
     ),
          ),
           ],  
          ),
           

         Row(
            children: const [
            Text("Crypto"),
            ]
          ),
          Row(
            children: [
          Image.asset('three.png'),
          Image.asset('four.png'),
          Image.asset('five.png'),
            ],
          ),
          Row(
            children: [
          Image.asset('three.png'),
          Image.asset('four.png'),
          Image.asset('five.png'),
            ],
          ),
          Column(
            children: [
                      Image.asset('Primary_Navigation.png'),
            ]
          )
        ],
      ),
    );
  }
}
