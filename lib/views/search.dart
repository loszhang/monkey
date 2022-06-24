import 'package:flutter/material.dart';
import 'package:untitled/views/person_detail.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController controller = TextEditingController();

  bool result = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Expanded(
                    child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                            border: OutlineInputBorder(
                              gapPadding: 0
                            ),
                            hintText: 'Search'
                        ),
                        style: TextStyle(fontSize: 16),
                        cursorColor: Colors.blue,
                      onSubmitted: (value) {
                        setState(() {
                          result = true;
                        });
                      },
                    )
                ),
                IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: InkWell(
              child: result ? Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                      ),
                      title: Text('Title'),
                      subtitle: Text('Subtitle'),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PersonDetail()));
                      },
                    );
                  },
                ),
              ) : Container(),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}

