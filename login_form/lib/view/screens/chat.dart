import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Chat extends StatelessWidget {
  Chat({super.key});
  List<Widget> users = [
    ActiveUsers(username: 'mohamed Ashraf', imgurl: 'assets/images/hacker.png'),
    SizedBox(
      width: 10,
    ),
    ActiveUsers(username: 'abdullah koryam', imgurl: 'assets/images/boy.png'),
    SizedBox(
      width: 10,
    ),
    ActiveUsers(username: 'Andrew jaqoub', imgurl: 'assets/images/gamer.png'),
    SizedBox(
      width: 10,
    ),
    ActiveUsers(username: 'Gamila ahmed', imgurl: 'assets/images/woman.png'),
    SizedBox(
      width: 10,
    ),
    ActiveUsers(username: 'abo obiada', imgurl: 'assets/images/man.png'),
    SizedBox(
      width: 10,
    ),
    ActiveUsers(
        username: 'Esraa mahmoud', imgurl: 'assets/images/woman (1).png'),
    SizedBox(
      width: 10,
    ),
    ActiveUsers(username: 'mohamed Ashraf', imgurl: 'assets/images/hacker.png'),
    SizedBox(
      width: 10,
    ),
    ActiveUsers(username: 'abdullah koryam', imgurl: 'assets/images/boy.png'),
    SizedBox(
      width: 10,
    ),
    ActiveUsers(username: 'Andrew jaqoub', imgurl: 'assets/images/gamer.png'),
    SizedBox(
      width: 10,
    ),
    ActiveUsers(username: 'Gamila ahmed', imgurl: 'assets/images/woman.png'),
    SizedBox(
      width: 10,
    ),
    ActiveUsers(username: 'abo obiada', imgurl: 'assets/images/man.png'),
    SizedBox(
      width: 10,
    ),
    ActiveUsers(
        username: 'Esraa mahmoud', imgurl: 'assets/images/woman (1).png'),
    SizedBox(
      width: 10,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        child: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.chat),
                title: Text('Chat'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.logout_rounded),
                title: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        // leading: Icon(Icons.login_outlined),
        actions: [
          TextButton(onPressed: () {}, child: Icon(Icons.camera_alt)),
          TextButton(onPressed: () {}, child: Icon(Icons.edit_outlined)),
        ],

        backgroundColor: Color.fromARGB(255, 192, 202, 204),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Chats",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueGrey[200]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 15,
                        ),
                        Text("search"),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: users,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Expanded(
                      child: Column(
                    children: [
                      chatUsers(
                          username: 'mohamed ashraf',
                          imgurl: 'assets/images/gamer.png'),
                      SizedBox(
                        height: 5,
                      ),
                      chatUsers(
                          username: 'mahmouad abbas',
                          imgurl: 'assets/images/hacker.png'),
                      SizedBox(
                        height: 5,
                      ),
                      chatUsers(
                          username: 'esraa Gamal',
                          imgurl: 'assets/images/woman.png'),
                      SizedBox(
                        height: 5,
                      ),
                      chatUsers(
                          username: 'mohamed fathy',
                          imgurl: 'assets/images/man.png'),
                      SizedBox(
                        height: 5,
                      ),
                      chatUsers(
                          username: 'abdullah koryam',
                          imgurl: 'assets/images/boy.png'),
                      SizedBox(
                        height: 5,
                      ),
                      chatUsers(
                          username: 'Gamila mahmoud',
                          imgurl: 'assets/images/woman (1).png'),
                      SizedBox(
                        height: 5,
                      ),
                      chatUsers(
                          username: 'mohamed ashraf',
                          imgurl: 'assets/images/gamer.png'),
                      SizedBox(
                        height: 5,
                      ),
                      chatUsers(
                          username: 'mahmouad abbas',
                          imgurl: 'assets/images/hacker.png'),
                      SizedBox(
                        height: 5,
                      ),
                      chatUsers(
                          username: 'esraa Gamal',
                          imgurl: 'assets/images/woman.png'),
                      SizedBox(
                        height: 5,
                      ),
                      chatUsers(
                          username: 'mohamed fathy',
                          imgurl: 'assets/images/man.png'),
                      SizedBox(
                        height: 5,
                      ),
                      chatUsers(
                          username: 'abdullah koryam',
                          imgurl: 'assets/images/boy.png'),
                      SizedBox(
                        height: 5,
                      ),
                      chatUsers(
                          username: 'Gamila mahmoud',
                          imgurl: 'assets/images/woman (1).png'),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  )),
                ),
              )
            ],
          )),
    );
  }
}

class ActiveUsers extends StatelessWidget {
  final String username;
  final String imgurl;

  ActiveUsers({required this.username, required this.imgurl, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
            radius: 25,
            // backgroundImage: AssetImage('assets/images/hacker.png')
            backgroundImage: AssetImage(imgurl)),
        Text(
          username,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ]),
    );
  }
}

class chatUsers extends StatelessWidget {
  final String username;
  final String imgurl;
  chatUsers({required this.username, required this.imgurl, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(imgurl),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              username,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'lorem afadfa adfdafad afa fafadf  asfa afa sdfds dsfds sdfsdf dsfds dfds  fafadf   fafadf   ',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        )),
        Row(
          children: [
            Text('am'),
            CircleAvatar(
              radius: 2,
              backgroundColor: Colors.amber,
            ),
            Text('10.30')
          ],
        )
      ],
    );
  }
}
