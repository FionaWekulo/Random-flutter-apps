import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  /*
  //using http to fetch data from an api
  void getData() async {
    Response response =
        await get(Uri.parse("https://jsonplaceholder.typicode.com/todos/1"));//TO GET JSON STRING
    Map data = jsonDecode(
        response.body); // converts json string to object and store as a map
    print(data);
    print(data['title']);
  }*/

  //String time = 'loading';
  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    //print(instance.time);
    if (context.mounted) {
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
        'isDayTime' : instance.isDayTime,
      });
    }

    //setState(() {
    // time = instance.time;
    // });
  }

  @override
  void initState() {
    super.initState();
    //getData();
    setupWorldTime();
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: const Center(
        child: SpinKitRing(
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
