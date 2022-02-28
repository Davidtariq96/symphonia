import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symphonia/model/model.dart';

import 'bloc/data_bloc.dart';

class PricePage extends StatelessWidget {
  const PricePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Cryptos",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.filter_list_rounded),
                      SizedBox(width: 10),
                      Text(
                        "Prices",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: BlocBuilder<DataBloc, List<Model>>(
                  builder: (context, remoteData) {
                    if (remoteData.isEmpty) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return ListView.builder(
                      itemBuilder: (context, index) => Card(
                        color: Colors.grey.shade200,
                        elevation: 0,
                        child: ListTile(
                          trailing: Text("\$${remoteData[index].currentPrice}"),
                          title: Text(remoteData[index].name),
                          subtitle: Text(remoteData[index].symbol),
                          leading: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image(
                                width: 40,
                                height: 40,
                                image: NetworkImage(remoteData[index].image)),
                          ),
                        ),
                      ),
                      itemCount: remoteData.length - 60,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
