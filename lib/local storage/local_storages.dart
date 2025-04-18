import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class LocalStoragesWidgets extends StatefulWidget {
  const LocalStoragesWidgets({super.key});

  @override
  State<LocalStoragesWidgets> createState() => _LocalStoragesWidgetsState();
}

class _LocalStoragesWidgetsState extends State<LocalStoragesWidgets> {
  final data = GetStorage();
  Map<String, bool> setting = {};
  Map<String, bool> defaultSetting = {
    'Sound enable': false,
    'Music enable': false,
    'Show Notification ': false
  };
  @override
  void initState() {
    setting = data.read('setting') ?? defaultSetting;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Get Storage: ' + (data.read('example') ?? 'n/a')),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: setting.length,
                itemBuilder: (context, index) {
                  String key = setting.keys.elementAt(index);
                  return CheckboxListTile(
                      title: Text(key),
                      value: setting[key],
                      onChanged: (value) {
                        setState(() {
                          setting[key] = value!;
                        });
                      });
                },
              ),
              ElevatedButton(
                  onPressed: () async {
                    await data.write('setting', setting);
                    setState(() {
                      data.write('example', 'it work');
                    });
                    print('Save ');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text('Save Settings ')),
              SizedBox(
                height: 22,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      data.remove(
                        'example',
                      );
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text('Clear me Here ')),
            ],
          ),
        ));
  }
}
