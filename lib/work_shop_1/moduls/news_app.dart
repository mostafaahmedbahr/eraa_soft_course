import 'package:eraa_soft_course/work_shop_1/bloc/cubit.dart';
import 'package:eraa_soft_course/work_shop_1/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class NewsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = NewsCubit.get(context);
       return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.search,color: Colors.black,),
              ),
            ],
            leading: IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu,color: Colors.black,),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Good Morning",
                  style: TextStyle(
                    color: Colors.grey,
                  ),),
                SizedBox(height: 10,),
                Text("Ned Stark",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(height: 20,),
                Text("Your daily read"),
                SizedBox(height: 10,),
                Container(
                  child: cubit.screens[cubit.currentIndex],
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type : BottomNavigationBarType.fixed,
            currentIndex: cubit.currentIndex,
            onTap: (index){
              cubit.changeNavBar(index);
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.sports),
                  label: "Sports"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.business),
                  label: "business"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.health_and_safety),
                  label: "health"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.science),
                  label: "science"
              ),

            ],
          ),
        );
      },
    );
  }
}
