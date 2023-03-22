import 'package:fitness_app/common/colors.dart';
import 'package:fitness_app/widget/rounded_button_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../../data/HeartRateData.dart';

class HomePage extends StatefulWidget {
  static String route = "/home";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HeartRateData> data = [
    HeartRateData('Monday', 35),
    HeartRateData('Tuesday', 20),
    HeartRateData('Wednesday', 34),
    HeartRateData('Thursday', 32),
    HeartRateData('Friday', 40),
    HeartRateData('Saturday', 32),
    HeartRateData('Sunday', 36),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Welcome Back"),
                      SizedBox(height: 5),
                      Text("Stefani Wong",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  InkWell(
                    onTap: () => Fluttertoast.showToast(
                        msg: "Fitur Belum Tersedia",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: AppColor.colorPurpleFD,
                        textColor: Colors.white,
                        fontSize: 16.0),
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: AppColor.colorGreyF8,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child:
                          SvgPicture.asset("assets/images/ic_notification.svg"),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColor.colorGreyF8,
                  gradient: const LinearGradient(
                      colors: [AppColor.colorPurpleFD, AppColor.colorBlueFF]),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "BMI (Body Mass Index)",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "You have a normal weight",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RoundedButtonPrimary(
                          borderRadius: BorderRadius.circular(50),
                          onPressed: () => Fluttertoast.showToast(
                              msg: "Fitur Belum Tersedia",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: AppColor.colorPurpleFD,
                              textColor: Colors.white,
                              fontSize: 16.0),
                          height: 35,
                          gradient: const LinearGradient(
                            colors: [
                              AppColor.colorPurpleF2,
                              AppColor.colorPink,
                            ],
                          ),
                          child: const Text("View More"),
                        )
                      ],
                    ),
                    SvgPicture.asset("assets/images/il_pie_chart.svg")
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColor.colorPurpleFD.withOpacity(0.2),
                      AppColor.colorBlueFF.withOpacity(0.2),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.colorPurpleFD.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Today Target",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    RoundedButtonPrimary(
                      onPressed: () => Fluttertoast.showToast(
                          msg: "Fitur Belum Tersedia",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: AppColor.colorPurpleFD,
                          textColor: Colors.white,
                          fontSize: 16.0),
                      child: const Text("Check"),
                      height: 30,
                      width: 80,
                      borderRadius: BorderRadius.circular(50),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Activity Status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColor.colorPurpleFD.withOpacity(0.2),
                      AppColor.colorBlueFF.withOpacity(0.2),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.colorPurpleFD.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Heart Rate",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text("${data.last.rate} BPM",
                        style: const TextStyle(
                            fontSize: 14, color: AppColor.colorPurpleFD)),
                    SfSparkLineChart.custom(
                      color: AppColor.colorPurpleFD,
                      trackball: const SparkChartTrackball(
                        color: AppColor.colorPurpleF2,
                        backgroundColor: AppColor.colorPurpleF2,
                        borderRadius: BorderRadius.all(Radius.circular(90)),
                        activationMode: SparkChartActivationMode.tap,
                      ),
                      marker: const SparkChartMarker(
                          displayMode: SparkChartMarkerDisplayMode.last),
                      labelDisplayMode: SparkChartLabelDisplayMode.last,
                      labelStyle: const TextStyle(
                          color: AppColor.colorPurpleFD,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                      axisLineColor: Colors.transparent,
                      xValueMapper: (int index) => data[index].day,
                      yValueMapper: (int index) => data[index].rate,
                      dataCount: 7,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Latest Workout",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("See more",
                      style: TextStyle(
                        color: AppColor.colorGreyA5,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              for (int i = 1; i < 4; i++)
                InkWell(
                  onTap: () => Fluttertoast.showToast(
                      msg: "Fitur Belum Tersedia",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: AppColor.colorPurpleFD,
                      textColor: Colors.white,
                      fontSize: 16.0),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/images/il_workout_$i.svg'),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Full Body Workout",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 5),
                            const Text("30 minutes",
                                style: TextStyle(
                                    fontSize: 14, color: AppColor.colorGreyA5)),
                            const SizedBox(height: 5),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90),
                                gradient: LinearGradient(
                                  colors: [
                                    AppColor.colorPurpleFD,
                                    AppColor.colorPurpleF2,
                                    Colors.grey.withOpacity(0.2),
                                  ],
                                  stops: const [
                                    0.1,
                                    0.5,
                                    0.5,
                                  ],
                                ),
                              ),
                              child: const SizedBox(
                                height: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
