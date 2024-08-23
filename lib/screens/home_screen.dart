import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: mq.height * .07,),

            Center(
              child: Container(
                height: mq.height * .06,
                width: mq.width * .8,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    const Spacer(flex: 3,),
                    const Text('vote.org.my', style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF64748B)
                      )
                    ),
                    const Spacer(flex: 2,),
                    Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: Image.asset('images/img_1.png', height: mq.height * .07, width: mq.width * .1),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: mq.height * .02,),

            Image.asset('images/img_2.png', width: mq.width * 1, fit: BoxFit.cover,),

            SizedBox(height: mq.height * .03,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text('Live Vote Results', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 28
                  ),),

                  SizedBox(height: mq.height * .01,),

                  const Text('Winner Contestant', style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                  ),),

                  SizedBox(height: mq.height * .01,),

                  Stack(
                    children: [
                      Image.asset('images/img_3.png',width: mq.width ,fit: BoxFit.cover,),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset('images/img_4.png',),
                      )
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [

                        Expanded(
                          child: Card(
                            color: Colors.blue,
                            elevation: 2,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                children: [
                                  const Text("Total Votes", style: TextStyle(fontSize: 18, color: Colors.white, )),
                                  SizedBox(height: mq.height * .01,),
                                  const Text("560", style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.w500))
                                ]
                              ),
                            )
                          ),
                        ),

                        Expanded(
                          child: Card(
                              color: Colors.blueGrey,
                              elevation: 2,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                    children: [
                                      const Text("Total Votes", style: TextStyle(fontSize: 18, color: Colors.white, )),
                                      SizedBox(height: mq.height * .01,),
                                      const Text("50%", style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.w500))
                                    ]
                                ),
                              )
                          ),
                        )
                      ]
                    ),
                  ),

                  SizedBox(height: mq.height * .02,),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text('Others Contestant  ', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                  ),),

                  SizedBox(height: mq.height * .02,),

                  Image.asset('images/img_5.png',width: mq.width, fit: BoxFit.cover),
                  Image.asset('images/img_6.png',width: mq.width, fit: BoxFit.cover),
                  Image.asset('images/img_7.png',width: mq.width, fit: BoxFit.cover),

                  SizedBox(height: mq.height * .02,),

                  const Text('Contest Videos', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                  ),),

                  SizedBox(height: mq.height * .01,),

                  InkWell(
                    onTap: () {
                      const url = 'https://www.youtube.com/watch?v=aLtXzKyNxkY';
                      launchUrl(
                        Uri.parse(url),
                        mode: LaunchMode.externalApplication
                      );
                    },
                    child: const Text('https://www.youtube.com/watch?v=aLtXzKyNxkY', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.blue,
                      decorationColor: Colors.blue
                    ),),
                  ),

                  SizedBox(height: mq.height * .02,),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text('Upcoming Events', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 28
                  ),),

                  SizedBox(height: mq.height * .02,),

                  Image.asset('images/img_8.png',width: mq.width, fit: BoxFit.cover),
                  Image.asset('images/img_9.png',width: mq.width, fit: BoxFit.cover),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }

}
