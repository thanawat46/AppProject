
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_app_fund/src/page/Profile/ProfilePage.dart';
import '../routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 0) {
      Navigator.pushReplacementNamed(context, AppRoute.home);
    } else if (index == 1) {
      Navigator.pushReplacementNamed(context, AppRoute.savings);
    } else if (index == 2) {
      Navigator.pushReplacementNamed(context, AppRoute.loan);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            PopupMenuButton<int>(
              icon: Image.asset(
                "assets/imgs/menu.png",
                height: 30,
              ), 
                onSelected: (value) {
                if (value == 1) {}
                else if (value == 2) {}
                else if (value == 3) {}
              },
              itemBuilder: (context)=>[
                PopupMenuItem(
                  value: 1,
                  child: Text("คำนวณเงินปันผล"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("คำนวณเงินกู้"),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text("ข้อมูลสมาชิก"),
                ),
              ],
            ),
            SizedBox(width: 290),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profilepage()),
                );
              },
              child: Image.asset(
                "assets/imgs/user.png",
                height: 30,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("หน้าหลัก"),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(right: 30.0, left: 30, top: 10),
              children: [
                _box(),
                _box(),
                _box(),
                _box(),
                _box(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _MuenBar(),
    );
  }

  Widget _MuenBar() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: GNav(
          activeColor: Colors.white,
          tabBackgroundColor: Colors.green.shade300,
          gap: 10,
          padding: EdgeInsets.all(15),
          selectedIndex: _selectedIndex,
          onTabChange: _onTabChange,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'หน้าหลัก',
            ),
            GButton(
              icon: Icons.savings,
              text: 'เงินฝาก',
            ),
            GButton(
              icon: Icons.account_balance,
              text: 'เงินกู้',
            ),
          ],
        ),
      ),
    );
  }

  Widget _box() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      padding: EdgeInsets.all(10.0),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
      ),
    );
  }
}
