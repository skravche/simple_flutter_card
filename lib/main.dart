import 'package:flutter/material.dart';

void main() {
  return runApp(MySimpleApp());
}

class MySimpleApp extends StatelessWidget {
  // const MySimpleApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'Sample App Here',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: PlayerWidget(),
      ),
    );
  }
}

//
class FavoriteWidget extends StatefulWidget {
// const FavoriteWidget({Key key}) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = false;
  int _likes = 110;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('favorite object text'),
    );
  }
}

// ui widget
class PlayerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Title Player Card'),
          key: Key('key1'),
        ),
        body: Container(child: _buildMainColumn()));
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _buildTopImage(),
          Center(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: _buildRaiting(),
                  ),
                  Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: _buildActionButton(),
                    ),
                  ),
                  Container(
                    child: Text('About ...'),
                    margin: const EdgeInsets.all(5),
                  ),
                ],
              ),
            ),
          )
        ],
      ); // ListView для скролінгу

// Methods

  Widget _buildTopImage() => Container(
        child: Card(
          margin: const EdgeInsets.all(5),
          elevation: 5,
          child: Image.asset('assets/images/index2.jpg', fit: BoxFit.cover),
        ),
      );

  Widget _buildRaiting() => ListTile(
        title: Text(
          'Block Part I',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text('GRAM Kyiv'),
        trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[FavoriteWidget()]),
      );

  Widget _buildActionButton() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildButton(),
          _buildButton(),
          _buildButton(),
        ],
      );

  Widget _buildButton(String label, IconData icon, Color color) => Column(
        children: <Widget>[
          Icon(icon, color: Colors.black),
          Container(
            child: Text(
              label,
              style: TextStyle(
                  fontWeight: FontWeight
                      .w400), // end is here at less 6, 26:00 !!!!!!!!!!!
            ),
          ),
        ],
      );
}
