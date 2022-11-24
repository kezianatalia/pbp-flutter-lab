import 'package:counter_7/page/drawer.dart';
import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  static List<String> listJudul = [];
  static List<String> listNominal = [];
  static List<String> listJenis = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: buildDrawer(context),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(listJudul[index],
                            style: const TextStyle(fontSize: 25),
                            textAlign: TextAlign.left),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(listNominal[index].toString(),
                                  style: const TextStyle(fontSize: 15),
                                  textAlign: TextAlign.left),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(listJenis[index],
                                  style: const TextStyle(fontSize: 15),
                                  textAlign: TextAlign.right),
                            ),
                          ),
                        ]),
                  ],
                )),
          );
        },
        itemCount: listJudul.length,
      ),
    );
  }
}

void addData(String judul, String nominal, String jenis) {
  _DataPageState.listJudul.add(judul);
  _DataPageState.listNominal.add(nominal);
  _DataPageState.listJenis.add(jenis);
}
