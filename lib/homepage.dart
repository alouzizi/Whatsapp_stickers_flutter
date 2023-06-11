import 'package:flutter/material.dart';
import 'favorits.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        // child:
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                    child: Text(
                  'T E S T',
                  style: TextStyle(fontSize: 40),
                )),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: Text('HOME'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: Text('Favorits'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Favorits()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.share),
                title: Text('Share App'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.star),
                title: Text('Rate This app'),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: const Icon(Icons.privacy_tip_outlined),
                title: Text('Privacy policy'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
