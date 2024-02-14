import 'package:flutter/material.dart';
import 'package:whatsapp_clone_responsive_ui/infi.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      ),
                    ),
                    title: Text(info[index]['name'].toString(),
                        style: const TextStyle(fontSize: 18)),
                    subtitle: Text(
                      info[index]['message'].toString(),
                      style: const TextStyle(fontSize: 12),
                    ),
                    trailing: Text(info[index]['time'].toString()),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
