import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        // // disabling the default arrow to go back
        // automaticallyImplyLeading: false,
        // // adding custom back arrow
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        //   icon: const Icon(Icons.arrow_back_ios),
        // ),
        actions: [
          IconButton(
            onPressed: (() {
              debugPrint('button on apbar pressed.');
            }),
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // adding widgets verticaly
          children: [
            Image.asset('images/einstein.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity, // for the maximum possible width
              child: const Center(
                child: Text('This is a text widget',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.green : Colors.blue),
              onPressed: () {
                debugPrint('Elevated button pressed.');
              },
              child: const Text('Elevated button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined button pressed');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text button pressed');
              },
              child: const Text('Text button'),
            ),
            // Row() is for adding widgets horizontaly
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('The row is triggered.');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckBox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckBox = newBool!;
                  });
                }),
            Image.network(
                'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/32d7143e-8a06-4b1c-ae36-d9a5e718417d/dexkrmz-78ef599b-6a52-43ad-81f2-0745d22be7cf.jpg/v1/fill/w_1280,h_1810,q_75,strp/albert_einstein_abstract_colors_by_gizmohone_dexkrmz-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzMyZDcxNDNlLThhMDYtNGIxYy1hZTM2LWQ5YTVlNzE4NDE3ZFwvZGV4a3Jtei03OGVmNTk5Yi02YTUyLTQzYWQtODFmMi0wNzQ1ZDIyYmU3Y2YuanBnIiwiaGVpZ2h0IjoiPD0xODEwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvMzJkNzE0M2UtOGEwNi00YjFjLWFlMzYtZDlhNWU3MTg0MTdkXC9naXptb2hvbmUtNC5wbmciLCJvcGFjaXR5Ijo5NSwicHJvcG9ydGlvbnMiOjAuNDUsImdyYXZpdHkiOiJjZW50ZXIifX0.JxM1mr9c1wLslEpVdq6ZC021ujPnihPEp04g5749p_g')
          ],
        ),
      ),
    );
  }
}
