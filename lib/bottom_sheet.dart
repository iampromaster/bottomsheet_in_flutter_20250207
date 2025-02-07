import 'package:flutter/material.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
        backgroundColor: Colors.purple[200],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showBottomSheet(context),
          child: const Text(
            'Show Buttom Sheet',
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 5,
                  blurRadius: 10,
                ),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.blueAccent,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.green,
                ),
                title: const Text(
                  'Settings',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(
                  Icons.share,
                  color: Colors.purple,
                ),
                title: const Text(
                  'Share',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
                child: const Text(
                  'Close',
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
