import 'package:d8/makeimage.dart';
import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List places = [
    ['assets/images/canada.jpg','Canada'],
    ['assets/images/greece.jpg','Greece'],
    ['assets/images/Italy.jpg','Italy'],
    ['assets/images/united-states.jpg','United States'],
  ];
  List hotels=[
 ['assets/images/1.jfif','Canada'],
    ['assets/images/2.jpg','Greece'],
    ['assets/images/3.webp','Italy'],
    ['assets/images/4.jfif','United States'],
    ['assets/images/5.webp','United States'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg',
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('What you would like to find?',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,
                    fontSize: 35,fontWeight: FontWeight.bold),),
                    SizedBox(height: 8,),
                    Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,color: Colors.grey,),
                            hintText: 'Search for cities , places ...'
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                       padding: EdgeInsets.symmetric(horizontal: 30), 
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text('Best Destination',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500,
                            fontSize: 20
                          ),),
                          SizedBox(height: 10,)
                                                ],
                        ),
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
             SizedBox(height: 15,)  ,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text('Best Destination',style: TextStyle(
                        fontSize: 30,fontWeight: FontWeight.bold,
                      ),),
                    ),
                    SizedBox(height: 10,),
                    Container(
              
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:places.length ,
                        itemBuilder: (context, index) {
                        return makeimage(
                          image: places[index][0],
                           country: places[index][1]);
                      },),
                    ),
                    SizedBox(height: 15,)  ,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text('Best Hotels',style: TextStyle(
                        fontSize: 30,fontWeight: FontWeight.bold,
                      ),),
                    ),
                    SizedBox(height: 10,),
                    Container(
              
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:hotels.length ,
                        itemBuilder: (context, index) {
                        return makeimage(
                          image: hotels[index][0],
                           country: hotels[index][1]);
                      },),
                    ),

            
          ],
        ),
      ),
    );
  }
}