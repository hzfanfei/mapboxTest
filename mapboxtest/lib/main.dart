import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MapPage(key: mapPageKey,),
    );
  }
}

GlobalKey<_MapPageState> mapPageKey = GlobalKey();

class MapPage extends StatefulWidget {

  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

  MapboxMap? mapboxMap;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: mapWidget()),
    );
  }

  Widget mapWidget() {
    var mapboxMap = MapWidget(
      cameraOptions: CameraOptions(
          center: Point(coordinates: Position(121.4737, 31.2304)).toJson(),
          zoom: 10.0),
      styleUri: "mapbox://styles/hzfanfei/clp6vni1d00hf01pwaheqb076",
      resourceOptions: ResourceOptions(accessToken: "pk.eyJ1IjoiaHpmYW5mZWkiLCJhIjoiY2xveDNqNHA3MDAzODJpbGxvcDhiMGx1NSJ9.l3E3obM5Q0h8sUljAOJlBQ"),
    );
    return mapboxMap;
  }
}