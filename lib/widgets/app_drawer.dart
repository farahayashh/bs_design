import 'package:myapp/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:
          ListView(
              children: [
            DrawerHeader(
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.black38,
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'usernname',
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ],
                ),
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: const Text(
                'Sign out',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/login');
                Provider.of<Auth>(context, listen: false).signout();


              },
            ),
          ]
          ),
    );
        }
      }
