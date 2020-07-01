import 'package:flutter/material.dart';

class CardListView extends StatelessWidget {
  final List<String> itemsList;
  final ScrollController _scrollController;
  CardListView(this.itemsList, this._scrollController);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: _scrollController,
        itemCount: itemsList.length,
        itemBuilder: (context, index) {
          final item = itemsList[index];
          return Card(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Caption Of the post',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Image.network(item, fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text('like count'),
                      IconButton(
                          icon: Icon(
                            Icons.favorite,
                            size: 24,
                            color: Colors.pink,
                          ),
                          onPressed: null),
                      IconButton(
                          icon: Icon(
                            Icons.comment,
                            size: 24,
                            color: Colors.pink,
                          ),
                          onPressed: null),
                      Text('comment count')
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
