import 'package:flutter/material.dart';
import 'package:trade_task_riv/providers/salesProvider.dart';

import 'design_model.dart';

import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    Provider.of<SalesProvider>(context,listen: false).getSalesSummary();

    return Scaffold(
      body: Consumer<SalesProvider>(
        builder:(context, salespro , child) {
          return ListView(
            children: [
              Text(salespro.salesData!.total!.totalNetAmount!.toString()),
            ListView.builder(
              shrinkWrap: true,
              itemCount: salespro.data!=null?
                  salespro.data!.length:0,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Text(salespro.data![index].customerName!),
                      Text(salespro.data![index].invoiceNo!),
                      Text(salespro.data![index].saleDate!),
                      Text(salespro.data![index].netAmount!.toString()),
                    ],
                  ),
                );
              },),
          ],
          );
        },
      ),
    );
  }

  // List summary = [
  //   SummaryList(
  //       name: 'ait Sabith S',
  //       invoiceNo: 'Invoice #9',
  //       date: '07 Feb 2023',
  //       amount: '₹ 760'),
  //   SummaryList(
  //       name: 'Noor Haveli (MOB)',
  //       invoiceNo: 'Invoice #10',
  //       date: '07 Feb 2023',
  //       amount: '₹ 320'),
  //   SummaryList(
  //       name: 'Cash Sale',
  //       invoiceNo: 'Invoice #11',
  //       date: '07 Feb 2023',
  //       amount: '₹ 320')
  // ];
}
