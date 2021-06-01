import "package:flutter/material.dart";


class MyDrawer extends StatelessWidget {
   String url = "";
  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: ListView(
         children: [
           DrawerHeader(child: UserAccountsDrawerHeader(
             accountName: Text("Dipak Darji"),
             accountEmail: Text("dipakdarji8347@gmail.com"),
             currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(url),
             ),
           )),
           ListTile(
             leading: Icon(Icons.home),
             title: Text("Home",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
           ),
           ListTile(
             leading: Icon(Icons.account_circle_outlined),
             title: Text("Profile",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
           ),
           ListTile(
             leading: Icon(Icons.email_outlined),
             title: Text("Email Me",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
           ),

         ],
       ),
    );
  }
}
