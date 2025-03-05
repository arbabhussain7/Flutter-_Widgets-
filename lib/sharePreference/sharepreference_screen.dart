import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferences;

class SharepreferenceScreen extends StatefulWidget {
  SharepreferenceScreen({super.key});

  @override
  State<SharepreferenceScreen> createState() => _SharepreferenceScreenState();
}

class _SharepreferenceScreenState extends State<SharepreferenceScreen> {
  String Name = '';
  late int age;
  late int number;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // DataStored();
  }

//another way to learn...
  // void DataStored() async {
  //   SharedPreferences sp = await SharedPreferences.getInstance();
  //   Name = sp.getString('name').toString();
  //   age = sp.getInt('age') ?? 0;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        title: Text(
          'Shared Preference..',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
                future: SharedPreferences.getInstance(),
                builder: (context, AsyncSnapshot<SharedPreferences> snapshot) {
                  return Column(
                    children: [
                      Text(
                        snapshot.data!
                            .getString(
                              'name',
                            )
                            .toString(),
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        snapshot.data!.getInt('age').toString(),
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        snapshot.data!.getDouble('numbr').toString(),
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )
                    ],
                  );
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          SharedPreferences sp = await SharedPreferences.getInstance();
          print('Check in');
          sp.setInt('age', 23);
          sp.setDouble('numbr', 23.3);
          sp.setString('name', 'Arbab Hussain');
          sp.setBool('Graduated', true);
          print(sp.getString('name'));

          Name = sp.getString('name').toString();
          setState(() {});
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
      ),
    );
  }
}
