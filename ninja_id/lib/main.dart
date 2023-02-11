import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: PersonCard(),
  ));
}

class PersonCard extends StatelessWidget {
  const PersonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: const Text("Person ID Card"),
          centerTitle: true,
          backgroundColor: Colors.black54,
          elevation: 9.0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            const SizedBox(height: 10.0,),
            const Center(
              child:  CircleAvatar(
                backgroundImage: AssetImage('profile.jpeg'),
                radius: 50.0,
              ),
            ),
            const Divider(
              height: 70.0,
              color: Colors.black54,
            ),
           const Text(
              "FULL NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
              ),
              const SizedBox(height: 10.0,),
            const Text(
              "Fiona Wekulo",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
              ),
              const SizedBox(height: 30.0,),
              const  Text(
              "PROFESSION",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
              ),
              const SizedBox(height: 10.0,),
            const Text(
              "Software Engineer",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
              ),
              const SizedBox(height: 30.0,),
            Row(
              children: const[
               Icon(
                  Icons.email,
                  color:Colors.grey,
                  ),
                    
                  SizedBox(height: 10.0,),

                  Text(
                    "fionawekulo@gmail.com",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                      letterSpacing: 1.0,
                    ),
                  )
                  ],
            )

             ]
     )
    );
  }
}
