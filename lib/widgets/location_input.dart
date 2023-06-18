import 'package:flutter/material.dart';

class LocationInput extends StatefulWidget {
  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  String _previewImageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 170,
          width: double.infinity,
          alignment: Alignment.center,
          child: _previewImageUrl == null
              ? Text(
                  'Nie wybrano lokalizacji',
                  textAlign: TextAlign.center,
                )
              : Image.network(
                  _previewImageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
        ),
        Row(children: <Widget> [
          TextButton.icon(onPressed: () {}, icon: Icon(Icons.location_on), label: Text('Obecna lokalizacja'),style: TextButton.styleFrom(),),
          TextButton.icon(onPressed: () {}, icon: Icon(Icons.map), label: Text('Wybierz z mapy'),style: TextButton.styleFrom(),),
        ],)
      ],
    );
  }
}
