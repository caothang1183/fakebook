import 'package:fakebook/common/widgets/widgets.dart';
import 'package:fakebook/models/models.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  final List<User> users;

  const ContactList({
    Key key,
    @required this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Contacts",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                ),
              ),
              Icon(Icons.search, color: Colors.grey[600]),
              const SizedBox(width: 8.0),
              Icon(Icons.more_horiz, color: Colors.grey[600]),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              itemCount: users.length,
              itemBuilder: (context, index) {
                final User user = users[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: UserCard(
                    user: user,
                    isActive: true,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
