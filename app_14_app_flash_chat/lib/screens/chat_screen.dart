import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_connection_app/utils/constants.dart';
import 'package:firebase_connection_app/screens/welcome_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatefulWidget {
  static const String id = 'chat_screen';

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  User? loggedInUser;
  late String messageText;
  final TextEditingController messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        setState(() {
          loggedInUser = user;
        });
      }
    } catch (e) {
      //print(e);
    }
  }

  void _logout() async {
    await _auth.signOut();
    Navigator.pushReplacementNamed(context, WelcomeScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('⚡️Chat'),
            if (loggedInUser != null)
              Text(
                'Welcome ${loggedInUser!.email ?? ''}',
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
          ],
        ),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                // stream: _firestore.collection('messages').snapshots(),
                stream: _firestore.collection('messages').orderBy('timestamp').snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final messages = snapshot.data!.docs.reversed;
                    List<Widget> messageWidgets = [];

                    for (var message in messages) {
                      final messageText = message['message'];
                      final messageSender = message['sender'];

                      final isMe = loggedInUser?.email == messageSender;

                      final messageWidget = Align(
                        alignment:
                        isMe ? Alignment.centerRight : Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10.0),
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: isMe ? Colors.teal[200] : Colors.grey[300],
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '$messageText',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                'From: $messageSender',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      );

                      messageWidgets.add(messageWidget);
                    }

                    return ListView(
                      reverse: true,
                      padding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      children: messageWidgets,
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error loading messages.'));
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),

            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      onChanged: (value) {
                        messageText = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (messageText.trim().isNotEmpty &&
                          loggedInUser != null) {
                        _firestore.collection('messages').add({
                          'sender': loggedInUser!.email,
                          'message': messageText,
                          'timestamp': FieldValue.serverTimestamp(),
                        });
                        messageController.clear();
                      }
                    },
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
