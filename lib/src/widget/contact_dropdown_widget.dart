import 'package:flutter/material.dart';

class ContactsDropdown extends StatefulWidget {
  @override
  _ContactsDropdownState createState() => _ContactsDropdownState();
}

class _ContactsDropdownState extends State<ContactsDropdown> {
  List<Contact> contacts = [
    Contact(
      name: "Alice",
      avatarUrl:
          "https://www.missionphotographe.com/ressources/images-actualites/actualite-204.jpg?version=1",
    ),
    Contact(
      name: "Bob",
      avatarUrl:
          "https://www.jeancoutu.com/globalassets/revamp/photo/conseils-photo/20160302-01-reseaux-sociaux-profil/photo-profil_301783868.jpg",
    ),
  ];

  Contact? selectedContact = Contact(
    name: 'Alice',
    avatarUrl:
        "https://www.missionphotographe.com/ressources/images-actualites/actualite-204.jpg?version=1",
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PopupMenuButton<Contact>(
          onSelected: (Contact contact) {
            setState(() {
              selectedContact = contact;
            });
          },
          itemBuilder: (BuildContext context) {
            return contacts.map((Contact contact) {
              return PopupMenuItem<Contact>(
                value: contact,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(contact.avatarUrl),
                  ),
                  title: Text(contact.name),
                ),
              );
            }).toList();
          },
          child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(selectedContact!.avatarUrl)),
        ),
        if (selectedContact != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(selectedContact!.name,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
      ],
    );
  }
}

class Contact {
  final String? id;
  final String name;
  final String avatarUrl;
  final String? phoneNumber;
  final String? email;
  final String address;

  Contact({
    this.id,
    required this.name,
    required this.avatarUrl,
    this.phoneNumber,
    this.email,
    this.address = '',
  });
}
