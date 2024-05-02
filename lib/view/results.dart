import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:omvoting/viewModel/partilistApp2_viewModel.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:omvoting/component/partes.dart';

class MyWidgetRes extends StatefulWidget {
  const MyWidgetRes({Key? key}) : super(key: key);

  @override
  State<MyWidgetRes> createState() => _MyWidgetResState();
}

class _MyWidgetResState extends State<MyWidgetRes> {
  final List<ChartData> chartData = [
    ChartData('Ibrahim', 300),
    ChartData('Robin', 400),
    ChartData('Ela', 454),
    ChartData('Dekan', 21),
    ChartData('Wana', 111),
    ChartData('Darya', 47),
    ChartData('Ari', 47),
    ChartData('Hawraz', 1),
    ChartData('Abdulrahman', 2),
    ChartData('Saya', 40),
    ChartData('Tofiq', 100),
    ChartData('Adam', 248),
    ChartData('Ramyar', 250),
    ChartData('Hawbash', 300),
    ChartData('Mustafa', 350),
    ChartData('Zhayar', 360),
    ChartData('Hamreen', 370),
    ChartData('Salman', 400),
    ChartData('Marewan', 420),
    ChartData('Hevi', 430),
    ChartData('Muhamad', 450),
    ChartData('Ismael', 500),
  ];

  final pvm = Get.put(PartyViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/images/bg.png'), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Form(
              child: Container(
                padding: const EdgeInsets.only(left: 60, right: 60, top: 60),
                child: TextFormField(
                  style: const TextStyle(
                    fontFamily: 'georgia',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'Search',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 3, horizontal: 4),
                    fillColor: Color.fromARGB(255, 247, 227, 227),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                margin: const EdgeInsets.only(left: 25, top: 40, bottom: 10),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 243, 160, 160),
                      Color.fromARGB(255, 238, 226, 226),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.center,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 77, 75, 75)
                          .withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(0, 7),
                    ),
                  ],
                ),
                child: const Text(
                  'Candidate Votes',
                  style: TextStyle(fontFamily: 'georgia'),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.only(left: 22, right: 22),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 228, 225, 225),
                    Color.fromARGB(255, 255, 255, 255),
                  ],
                  begin: Alignment.center,
                  end: Alignment.centerLeft,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 77, 75, 75).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              height: 400,
              child: SfCartesianChart(
                zoomPanBehavior: ZoomPanBehavior(
                  enablePanning: true,
                ),
                primaryXAxis: const CategoryAxis(
                  majorGridLines:
                      MajorGridLines(width: 0), // Hide major grid lines
                  plotOffset: 10, // Adjust the space between bars and axis
                  autoScrollingDelta: 10,
                  borderColor: Color.fromARGB(31, 192, 17, 17),
                  labelStyle: TextStyle(fontFamily: 'georgia'),
                  autoScrollingMode: AutoScrollingMode.end,
                ),
                series: <CartesianSeries>[
                  BarSeries<ChartData, String>(
                    dataSource: chartData,
                    xValueMapper: (ChartData data, _) => data.a,
                    yValueMapper: (ChartData data, _) => data.b,
                    color: const Color.fromARGB(150, 220, 66, 66),
                    dataLabelSettings: const DataLabelSettings(
                      isVisible: true,
                      textStyle: TextStyle(
                          fontFamily: 'georgia',
                          fontSize: 16,
                          color: Color.fromARGB(255, 21, 1, 48)),
                    ),
                    enableTooltip: true,
                  ),
                ],
              ),
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection("party").snapshots(),
                builder: (context, snapshot) {
                  List<Column> clientWidgets = [];
                  if (snapshot.hasData && snapshot.data != null) {
                    final clients = snapshot.data!.docs.reversed.toList();
                    for (var cl in clients) {
                      final ClientWid = Column(
                        children: [
                          MyWidgetParties(
                            partiName: cl['pName'],
                            partiVotes: cl['pVotes'].toString(),
                            partiPercent: '61%',
                            colorChoose: Colors.yellow,
                            img: cl['pImage'],
                          ),
                        ],
                      );
                      clientWidgets.add(ClientWid);
                    }
                  }

                  return ListView(
                    children: clientWidgets,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  final String a;
  final int b;

  ChartData(
    this.a,
    this.b,
  );
}
