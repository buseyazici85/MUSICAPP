dart import 'package:flutter/material.dart';
class NowplayingScreen extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        double screenWidth=MediaQuery.of(context).size.width;
        double screenHeight=MediaQuery.of(context).size.height;
        return Scaffold(
            appBar:AppBar(
                title:Text('Now Playing'),
                leading:[
                    IconButton(
                        icon:Icon(Icons.arrow_back),
                        onPressed:(){
                            Navigator.pop(context);
                        }
                    )
                ]
            ),
            body:Padding(
                padding:[
                    EdgeInsets.all(screenWidth*0.05),
                    child:Column(
                        children:[
                            Container(
                                width:screenWidth*0.7,
                                height:screenHeight*0.35,
                                decoration:BoxDecoration(
                                    color:Colors.grey[300],
                                    borderRadius:BorderRadius.circular(20)
                                )
                            ),
                            SizedBox(height:screenHeight*0.03),
                            Text('The Missing 96 Percent of the universe',style:TextStyle(fontSize:screenWidth*0.05,fontWeight:FontWeight.bold),TextAlign:TextAlign.center,),
                            Text('Claire Malone',style:TextStyle(fontSize:screenWidth*0.04),color:Colors.grey),),
                            SizedBox(height:screenHeight*0.03),
                            Slider(
                                value:25,
                                min:0,
                                max:100,
                                onChanged:(value){},
                            ),
                            Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children:[
                                    Text('2:45'),
                                    Text('3:40'),
                                ]
                            ),
                            SizedBox(height:20),
                            Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children:[
                                    Text("2:45",style:TextStyle(fontSize:screenWidth*0.04)),
                                    Text("3:40",style:TextStyle(fontSize:screenWidth*0.04)),
                                ]
                            ),
                            SizedBox(height:screenHeight*0.02),
                            Row(
                                mainAxisAlignment:MainAxisAlignment.center,
                                children:[
                                    IconButton(
                                      icon: Icon(Icons.skip_previous, size: screenWidth*0.12),onPressed: (){}   
                                    ),
                                    SizedBox(width:20),
                                    IconButton(
                                      icon: Icon(Icons.play_arrow, size: screenWidth*0.05),onPressed: (){}   
                                    ),
                                    SizedBox(width: 20),
                                    IconButton(
                                        icon: Icon(Icons.skip_next, size: screenWidth*0.12), onPressed: () {}
                                        ),
                                ]
                            )
                ]
            ),
          
        );
    }
            
}
