import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symphonia/model/model.dart';

import 'bloc/data_bloc.dart';

class PricePage extends StatelessWidget {
  const PricePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Crypto",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.filter_list_rounded),
                      SizedBox(width: 10),
                      Text("Prices"),
                    ],
                  )
                ],
              ),
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
                        child: ListTile(
                          trailing: Container(
                            color: Colors.red,
                            child: Image(
                                image: NetworkImage(remoteData[index].image)),
                          ),
                          title: Text(remoteData[index].name),
                          leading: Text("${remoteData[index].currentPrice}"),
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
