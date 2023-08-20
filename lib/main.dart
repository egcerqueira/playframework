import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
      ),
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _irregularEpithelialStratification = false;
  bool _reversePolarityBasalCells = false;
  bool _dropShapedReteRidges = false;
  bool _increasedNumberMitoticFigures = false;

  sendData() {
    print("enviado");
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection("Dysplassist")
        .doc(DateTime.now().toIso8601String());

    <String, dynamic>{};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dysplassist"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SwitchListTile.adaptive(
                title: const Text("Irregular Epithelial Stratification"),
                value: _irregularEpithelialStratification,
                onChanged: (bool value) {
                  setState(() {
                    _irregularEpithelialStratification = value;
                    print(_irregularEpithelialStratification);
                  });
                },
              ),
              const Divider(
                height: 0,
              ),
              SwitchListTile.adaptive(
                title: const Text("Reverse Polarity of Basal Cells"),
                value: _reversePolarityBasalCells,
                onChanged: (bool value) {
                  setState(() {
                    _reversePolarityBasalCells = value;
                    print(_reversePolarityBasalCells);
                  });
                },
              ),
              const Divider(
                height: 0,
              ),
              SwitchListTile.adaptive(
                title: const Text("Drop Shaped Rete Ridges"),
                value: _dropShapedReteRidges,
                onChanged: (bool value) {
                  setState(() {
                    _dropShapedReteRidges = value;
                    print(_dropShapedReteRidges);
                  });
                },
              ),
              const Divider(
                height: 0,
              ),
              SwitchListTile.adaptive(
                title: const Text("Increased Mitotic Figures"),
                value: _increasedNumberMitoticFigures,
                onChanged: (bool value) {
                  setState(() {
                    _increasedNumberMitoticFigures = value;
                    print(_increasedNumberMitoticFigures);
                  });
                },
              ),
              const Divider(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                        child: Text("Enviar"),
                        onPressed: () {
                          print("Enviado");
                        }),
                    ElevatedButton(
                        child: Text("Limpar"),
                        onPressed: () {
                          print("limpar");
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
