import 'package:basketball_counter_bloc/cubit/Counter_Cubit.dart';
import 'package:basketball_counter_bloc/cubit/Counter_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterStates>(
        builder: (context,state){
      return Scaffold(
        appBar: AppBar(
          title: Text('Points Counter'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('Team A'),
                    Text('${BlocProvider.of<CounterCubit>(context).teamAPoints}'),
                    ElevatedButton(onPressed: (){
                      BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'A', buttonNumber: 1);
                    }, child: Text('Add 1 Point')),
                    ElevatedButton(onPressed: (){
                      BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'A', buttonNumber: 2);
                    }, child: Text('Add 2 Point')),
                    ElevatedButton(onPressed: (){
                      BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'A', buttonNumber: 3);
                    }, child: Text('Add 3 Point')),
                  ],
                ),
                Container(
                  width: 3,
                  height: 300,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    Text('Team B'),
                    Text('${BlocProvider.of<CounterCubit>(context).teamBPoints}'),
                    ElevatedButton(onPressed: (){
                      BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'B', buttonNumber: 1);
                    }, child: Text('Add 1 Point')),
                    ElevatedButton(onPressed: (){
                      BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'B', buttonNumber: 2);
                    }, child: Text('Add 2 Point')),
                    ElevatedButton(onPressed: (){
                      BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'B', buttonNumber: 3);
                    }, child: Text('Add 3 Point')),
                  ],
                ),
              ],
            ),
            ElevatedButton(onPressed: (){
              BlocProvider.of<CounterCubit>(context).reset();
            }, child: Text('Reset')),
          ],
        ),
      );
    },
        listener: (context,state){
        }
    );
  }
}