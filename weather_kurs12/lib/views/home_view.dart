import 'dart:developer';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_kurs12/constans/api_keys0/api_keys.dart';
import 'package:weather_kurs12/views/search_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    showWeatherByLocation();
    super.initState();
  }

  Future<void> showWeatherByLocation() async {
    await getWeather();
    final position = await _getPosition();
    log('Latitude ==> ${position.latitude}');
    log('Longitude ==> ${position.longitude}');
  }

  //CRUD
  //CREATE-POST
  //READ-GET
  //UPDATE-PUT
  //DELETE-DELETE
  Future<void> getWeather() async {
    try {
      final clinet = http.Client();

      final url =
          'https://api.openweathermap.org/data/2.5/weather?lat=37.421998333333335&lon=&appid=${ApiKeys.myApiKey}';
      Uri uri = Uri.parse(url);
      final joop = await clinet.get(uri);
      log('response ==> ${joop.body}}');
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Position> _getPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.near_me,
            size: 50,
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchView(),
                  ),
                );
              },
              child: Icon(
                Icons.location_city,
                size: 50,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/cloud.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 100,
                left: 100,
                child: Text(
                  '🌞',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 140,
                left: 30,
                child: Text(
                  '11°',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 650,
                left: 250,
                child: Text(
                  'Osh',
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Positioned(
                top: 500,
                left: 20,
                child: Text(
                  '''Bad weather🧣
Dress Warmly🧤
                  ''',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
