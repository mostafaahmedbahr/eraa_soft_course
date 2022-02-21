import 'package:eraa_soft_course/work_shop_1/bloc/cubit.dart';
import 'package:eraa_soft_course/work_shop_1/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SportScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = NewsCubit.get(context);
        return Expanded(
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            separatorBuilder: (context,index)=>Divider(color: Colors.grey,height: 1,),
            itemCount: cubit.sportArticle.length,
            itemBuilder: (context,index)=>Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(image: NetworkImage(
                      cubit.sportArticle[index].urlToImage==null?
                      'https://img.freepik.com/free-vector/year-2022-concept-design-stylized-image-2022-happy-anthropomorphic-zero-juggles-twos-vector-illustration_255498-564.jpg?w=826':
                      cubit.sportArticle[index].urlToImage,
                    ),
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(cubit.sportArticle[index].title,
                              textAlign:  TextAlign.end,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,),
                            Divider(),
                            Text(cubit.sportArticle[index].publishedAt,
                              textAlign:  TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),
        );
      },
    );
  }
}
